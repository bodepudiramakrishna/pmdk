/* Copyright (c) 2004, 2013, Oracle and/or its affiliates.
   Copyright (c) 2010, 2014, SkySQL Ab.

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; version 2 of the License.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA */

/**
  @file ha_pmdk.cc

  @brief
  The ha_pmdk engine is a stubbed storage engine for pmdk purposes only;
  it does almost nothing at this point. Its purpose is to provide a source
  code illustration of how to begin writing new storage engines; see also
  storage/pmdk/ha_pmdk.h.

  Additionally, this file includes an pmdk of a daemon plugin which does
  nothing at all - absolutely nothing, even less than pmdk storage engine.
  But it shows that one dll/so can contain more than one plugin.

  @details
  ha_pmdk will let you create/open/delete tables, but
  nothing further (for pmdk, indexes are not supported nor can data
  be stored in the table). It also provides new status (pmdk_func_pmdk)
  and system (pmdk_ulong_var and pmdk_enum_var) variables.

  Use this pmdk as a template for implementing the same functionality in
  your own storage engine. You can enable the pmdk storage engine in your
  build by doing the following during your build process:<br> ./configure
  --with-pmdk-storage-engine

  Once this is done, MySQL will let you create tables with:<br>
  CREATE TABLE <table name> (...) ENGINE=EXAMPLE;

  The pmdk storage engine is set up to use table locks. It
  implements an pmdk "SHARE" that is inserted into a hash by table
  name. You can use this to store information of state that any
  pmdk handler object will be able to see when it is using that
  table.

  Please read the object definition in ha_pmdk.h before reading the rest
  of this file.

  @note
  When you create an EXAMPLE table, the MySQL Server creates a table .frm
  (format) file in the database directory, using the table name as the file
  name as is customary with MySQL. No other files are created. To get an idea
  of what occurs, here is an pmdk select that would do a scan of an entire
  table:

  @code
  ha_pmdk::store_lock
  ha_pmdk::external_lock
  ha_pmdk::info
  ha_pmdk::rnd_init
  ha_pmdk::extra
  ENUM HA_EXTRA_CACHE        Cache record in HA_rrnd()
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::rnd_next
  ha_pmdk::extra
  ENUM HA_EXTRA_NO_CACHE     End caching of records (def)
  ha_pmdk::external_lock
  ha_pmdk::extra
  ENUM HA_EXTRA_RESET        Reset database to after open
  @endcode

  Here you see that the pmdk storage engine has 9 rows called before
  rnd_next signals that it has reached the end of its data. Also note that
  the table in question was already opened; had it not been open, a call to
  ha_pmdk::open() would also have been necessary. Calls to
  ha_pmdk::extra() are hints as to what will be occuring to the request.

  A Longer pmdk can be found called the "Skeleton Engine" which can be 
  found on TangentOrg. It has both an engine and a full build environment
  for building a pluggable storage engine.

  Happy coding!<br>
    -Brian
*/

#ifdef USE_PRAGMA_IMPLEMENTATION
#pragma implementation        // gcc: Class implementation
#endif

#include <my_config.h>
#include <mysql/plugin.h>
#include "ha_pmdk.h"
#include "sql_class.h"
#include <libpmemobj.h>
#include <iostream>
#include <fstream>
#include <errno.h>

#define PMEMOBJ_EXT ".obj"
#define MAX_PATH_LEN 255


static handler *pmdk_create_handler(handlerton *hton,
                                       TABLE_SHARE *table, 
                                       MEM_ROOT *mem_root);

handlerton *pmdk_hton;

static MYSQL_THDVAR_ULONG(varopt_default, PLUGIN_VAR_RQCMDARG,
"default value of the VAROPT table option", NULL, NULL, 5, 0, 100, 0);

#ifdef HAVE_PSI_INTERFACE
static PSI_mutex_key ex_key_mutex_pmdk_share_mutex;
#endif

/**
  @brief
  If frm_error() is called then we will use this to determine
  the file extensions that exist for the storage engine. This is also
  used by the default rename_table and delete_table method in
  handler.cc and by the default discover_many method.

  For engines that have two file name extentions (separate meta/index file
  and data file), the order of elements is relevant. First element of engine
  file name extentions array should be meta/index file extention. Second
  element - data file extention. This order is assumed by
  prepare_for_repair() when REPAIR TABLE ... USE_FRM is issued.

  @see
  rename_table method in handler.cc and
  delete_table method in handler.cc
*/

static const char *ha_pmdk_exts[] = {
  NullS
};

pmdk_share::pmdk_share()
{
  thr_lock_init(&lock);
  mysql_mutex_init(ex_key_mutex_pmdk_share_mutex,
                   &mutex, MY_MUTEX_INIT_FAST);
}


static int pmdk_init_func(void *p)
{
  DBUG_ENTER("pmdk_init_func");

  pmdk_hton= (handlerton *)p;
  pmdk_hton->state=   SHOW_OPTION_YES;
  pmdk_hton->create=  pmdk_create_handler;
  pmdk_hton->flags=   HTON_CAN_RECREATE;
  pmdk_hton->tablefile_extensions= ha_pmdk_exts;

  DBUG_RETURN(0);
}


/**
  @brief
  pmdk of simple lock controls. The "share" it creates is a
  structure we will pass to each pmdk handler. Do you have to have
  one of these? Well, you have pieces that are used for locking, and
  they are needed to function.
*/

pmdk_share *ha_pmdk::get_share()
{
  pmdk_share *tmp_share;

  DBUG_ENTER("ha_pmdk::get_share()");

  lock_shared_ha_data();
  if (!(tmp_share= static_cast<pmdk_share*>(get_ha_share_ptr())))
  {
    tmp_share= new pmdk_share;
    if (!tmp_share)
      goto err;

    set_ha_share_ptr(static_cast<Handler_share*>(tmp_share));
  }
err:
  unlock_shared_ha_data();
  DBUG_RETURN(tmp_share);
}

void ha_pmdk::populate_errcodemap(void)
{
  errCodeMap[EEXIST] = HA_ERR_TABLE_EXIST;
  errCodeMap[ENOMEM] = HA_ERR_OUT_OF_MEM;
  errCodeMap[ENOENT] = HA_ERR_NO_SUCH_TABLE;
}
static handler* pmdk_create_handler(handlerton *hton,
                                       TABLE_SHARE *table, 
                                       MEM_ROOT *mem_root)
{
  return new (mem_root) ha_pmdk(hton, table);
}

ha_pmdk::ha_pmdk(handlerton *hton, TABLE_SHARE *table_arg)
  :handler(hton, table_arg)
{
  populate_errcodemap();
}


/**
  @brief
  Used for opening tables. The name will be the name of the file.

  @details
  A table is opened when it needs to be opened; e.g. when a request comes in
  for a SELECT on the table (tables are not open and closed for each request,
  they are cached).

  Called from handler.cc by handler::ha_open(). The server opens all tables by
  calling ha_open() which then calls the handler specific open().

  @see
  handler::ha_open() in handler.cc
*/

int ha_pmdk::open(const char *name, int mode, uint test_if_locked)
{
  DBUG_ENTER("ha_pmdk::open");
  DBUG_PRINT("info", ("open :%s ",name));

  if (!(share = get_share()))
    DBUG_RETURN(1);
  thr_lock_data_init(&share->lock,&lock,NULL);

  char path[MAX_PATH_LEN];
  snprintf(path, MAX_PATH_LEN, "%s%s", name, PMEMOBJ_EXT);

  objtab = pmemobj_open(path, name);
  if (objtab == NULL)
    DBUG_RETURN(errCodeMap[errno]);
  DBUG_RETURN(0);
}


/**
  @brief
  Closes a table.

  @details
  Called from sql_base.cc, sql_select.cc, and table.cc. In sql_select.cc it is
  only used to close up temporary tables or during the process where a
  temporary table is converted over to being a myisam table.

  For sql_base.cc look at close_data_tables().

  @see
  sql_base.cc, sql_select.cc and table.cc
*/

int ha_pmdk::close(void)
{
  DBUG_ENTER("ha_pmdk::close");
  DBUG_PRINT("info", ("close"));

  pmemobj_close(objtab);
  objtab = NULL;

  DBUG_RETURN(0);
}


/**
  @brief
  write_row() inserts a row. No extra() hint is given currently if a bulk load
  is happening. buf() is a byte array of data. You can use the field
  information to extract the data from the native byte array type.

  @details
  pmdk of this would be:
  @code
  for (Field **field=table->field ; *field ; field++)
  {
    ...
  }
  @endcode

  See ha_tina.cc for an pmdk of extracting all of the data as strings.
  ha_berekly.cc has an pmdk of how to store it intact by "packing" it
  for ha_berkeley's own native storage type.

  See the note for update_row() on auto_increments and timestamps. This
  case also applies to write_row().

  Called from item_sum.cc, item_sum.cc, sql_acl.cc, sql_insert.cc,
  sql_insert.cc, sql_select.cc, sql_table.cc, sql_udf.cc, and sql_update.cc.

  @see
  item_sum.cc, item_sum.cc, sql_acl.cc, sql_insert.cc,
  sql_insert.cc, sql_select.cc, sql_table.cc, sql_udf.cc and sql_update.cc
*/

int ha_pmdk::write_row(uchar *buf)
{
  DBUG_ENTER("ha_pmdk::write_row");
  DBUG_PRINT("info", ("write_row"));
  int err = 0;
  persistent_ptr<root> proot = pmemobj_root(objtab, sizeof (root));
  TX_BEGIN(objtab){
	persistent_ptr<row> row = pmemobj_tx_alloc(sizeof (row)+strlen((const char*)buf), 0);
	memcpy(row->buf, buf, table->s->reclength);
        row->next = proot->rows;
        proot->rows = row;
  }TX_ONABORT {
  DBUG_PRINT("info", ("write_row_ABORT"));
	  err = HA_ERR_OUT_OF_MEM;
  } TX_END
  stats.records++;

  DBUG_RETURN(err);
}


/**
  @brief
  Yes, update_row() does what you expect, it updates a row. old_data will have
  the previous row record in it, while new_data will have the newest data in it.
  Keep in mind that the server can do updates based on ordering if an ORDER BY
  clause was used. Consecutive ordering is not guaranteed.

  @details
  Currently new_data will not have an updated auto_increament record, or
  and updated timestamp field. You can do these for pmdk by doing:
  @code
  if (table->next_number_field && record == table->record[0])
    update_auto_increment();
  @endcode

  Called from sql_select.cc, sql_acl.cc, sql_update.cc, and sql_insert.cc.

  @see
  sql_select.cc, sql_acl.cc, sql_update.cc and sql_insert.cc
*/
int ha_pmdk::update_row(const uchar *old_data, const uchar *new_data)
{

  DBUG_ENTER("ha_pmdk::update_row");
  DBUG_PRINT("info", ("update_row"));
  TX_BEGIN(objtab) {
    memcpy(current->buf, new_data, table->s->reclength);
  } TX_END
  DBUG_RETURN(0);
}


/**
  @brief
  This will delete a row. buf will contain a copy of the row to be deleted.
  The server will call this right after the current row has been called (from
  either a previous rnd_nexT() or index call).

  @details
  If you keep a pointer to the last row or can access a primary key it will
  make doing the deletion quite a bit easier. Keep in mind that the server does
  not guarantee consecutive deletions. ORDER BY clauses can be used.

  Called in sql_acl.cc and sql_udf.cc to manage internal table
  information.  Called in sql_delete.cc, sql_insert.cc, and
  sql_select.cc. In sql_select it is used for removing duplicates
  while in insert it is used for REPLACE calls.

  @see
  sql_acl.cc, sql_udf.cc, sql_delete.cc, sql_insert.cc and sql_select.cc
*/

int ha_pmdk::delete_row(const uchar *buf)
{
  DBUG_ENTER("ha_pmdk::delete_row"); 
  DBUG_PRINT("info", ("delete_row"));
  persistent_ptr<root> proot = pmemobj_root(objtab, sizeof (root));
  if (!prev) {
    if (!current->next) { // sll contains single node
      TX_BEGIN(objtab) {
	pmemobj_tx_free(current.raw());
	proot->rows = nullptr;
      } TX_END
    } else { // first node of sll
      TX_BEGIN(objtab) {
        pmemobj_tx_free(current.raw());
	current = nullptr;
      } TX_END
      proot->rows = iter;
    }
  } else {
    if (!current->next) { // last node of sll
      prev->next = nullptr;
    } else { // other nodes of sll
      prev->next = current->next;    
    }
    TX_BEGIN(objtab) {
      pmemobj_tx_free(current.raw());
      current = nullptr; 
    } TX_END
  }
  stats.records--;
  DBUG_RETURN(0);
}


/**
  @brief
  Positions an index cursor to the index specified in the handle. Fetches the
  row if available. If the key value is null, begin at the first key of the
  index.
*/

int ha_pmdk::index_read_map(uchar *buf, const uchar *key,
                               key_part_map keypart_map __attribute__((unused)),
                               enum ha_rkey_function find_flag
                               __attribute__((unused)))
{
  int rc;
  DBUG_ENTER("ha_pmdk::index_read");
  rc= HA_ERR_WRONG_COMMAND;
  DBUG_RETURN(rc);
}


/**
  @brief
  Used to read forward through the index.
*/

int ha_pmdk::index_next(uchar *buf)
{
  int rc;
  DBUG_ENTER("ha_pmdk::index_next");
  rc= HA_ERR_WRONG_COMMAND;
  DBUG_RETURN(rc);
}


/**
  @brief
  Used to read backwards through the index.
*/

int ha_pmdk::index_prev(uchar *buf)
{
  int rc;
  DBUG_ENTER("ha_pmdk::index_prev");
  rc= HA_ERR_WRONG_COMMAND;
  DBUG_RETURN(rc);
}


/**
  @brief
  index_first() asks for the first key in the index.

  @details
  Called from opt_range.cc, opt_sum.cc, sql_handler.cc, and sql_select.cc.

  @see
  opt_range.cc, opt_sum.cc, sql_handler.cc and sql_select.cc
*/
int ha_pmdk::index_first(uchar *buf)
{
  int rc;
  DBUG_ENTER("ha_pmdk::index_first");
  rc= HA_ERR_WRONG_COMMAND;
  DBUG_RETURN(rc);
}


/**
  @brief
  index_last() asks for the last key in the index.

  @details
  Called from opt_range.cc, opt_sum.cc, sql_handler.cc, and sql_select.cc.

  @see
  opt_range.cc, opt_sum.cc, sql_handler.cc and sql_select.cc
*/
int ha_pmdk::index_last(uchar *buf)
{
  int rc;
  DBUG_ENTER("ha_pmdk::index_last");
  rc= HA_ERR_WRONG_COMMAND;
  DBUG_RETURN(rc);
}

int ha_pmdk::index_init(
/*====================*/
        uint            keynr,  /*!< in: key (index) number */
        bool)
{
  DBUG_ENTER("index_init");
  DBUG_RETURN(0);
}

int ha_pmdk::index_end()
{ 
  DBUG_ENTER("index_end");
  DBUG_RETURN(0);
}

int ha_pmdk::index_read(uchar*  buf, const uchar* key, uint key_len, ha_rkey_function find_flag)
{
  DBUG_ENTER("ha_pmdk::index_last");
  DBUG_RETURN(0);
}

/**
  @brief
  rnd_init() is called when the system wants the storage engine to do a table
  scan. See the pmdk in the introduction at the top of this file to see when
  rnd_init() is called.

  @details
  Called from filesort.cc, records.cc, sql_handler.cc, sql_select.cc, sql_table.cc,
  and sql_update.cc.

  @see
  filesort.cc, records.cc, sql_handler.cc, sql_select.cc, sql_table.cc and sql_update.cc
*/
int ha_pmdk::rnd_init(bool scan)
{
  DBUG_ENTER("ha_pmdk::rnd_init");
  DBUG_PRINT("info", ("rnd_init"));
  persistent_ptr<root> proot = pmemobj_root(objtab, sizeof (root));
  current=prev=NULL;
  iter = proot->rows;
  DBUG_RETURN(0);
}

int ha_pmdk::rnd_end()
{
  DBUG_ENTER("ha_pmdk::rnd_end");
  DBUG_PRINT("info", ("rnd_end"));
  iter = NULL;
  current = NULL;
  DBUG_RETURN(0);
}


/**
  @brief
  This is called for each row of the table scan. When you run out of records
  you should return HA_ERR_END_OF_FILE. Fill buff up with the row information.
  The Field structure for the table is the key to getting data into buf
  in a manner that will allow the server to understand it.

  @details
  Called from filesort.cc, records.cc, sql_handler.cc, sql_select.cc, sql_table.cc,
  and sql_update.cc.

  @see
  filesort.cc, records.cc, sql_handler.cc, sql_select.cc, sql_table.cc and sql_update.cc
*/
int ha_pmdk::rnd_next(uchar *buf)
{
  DBUG_ENTER("ha_pmdk::rnd_next");
  DBUG_PRINT("info", ("rnd_next"));
  if (!iter) 
    DBUG_RETURN(HA_ERR_END_OF_FILE);
  memcpy(buf, iter->buf, table->s->reclength);
  if (current != NULL)
     prev = current;
  current = iter;
  iter = iter->next;
  DBUG_RETURN(0);
}


/**
  @brief
  position() is called after each call to rnd_next() if the data needs
  to be ordered. You can do something like the following to store
  the position:
  @code
  my_store_ptr(ref, ref_length, current_position);
  @endcode

  @details
  The server uses ref to store data. ref_length in the above case is
  the size needed to store current_position. ref is just a byte array
  that the server will maintain. If you are using offsets to mark rows, then
  current_position should be the offset. If it is a primary key like in
  BDB, then it needs to be a primary key.

  Called from filesort.cc, sql_select.cc, sql_delete.cc, and sql_update.cc.

  @see
  filesort.cc, sql_select.cc, sql_delete.cc and sql_update.cc
*/
void ha_pmdk::position(const uchar *record)
{
  DBUG_ENTER("ha_pmdk::position");
  DBUG_VOID_RETURN;
}


/**
  @brief
  This is like rnd_next, but you are given a position to use
  to determine the row. The position will be of the type that you stored in
  ref. You can use ha_get_ptr(pos,ref_length) to retrieve whatever key
  or position you saved when position() was called.

  @details
  Called from filesort.cc, records.cc, sql_insert.cc, sql_select.cc, and sql_update.cc.

  @see
  filesort.cc, records.cc, sql_insert.cc, sql_select.cc and sql_update.cc
*/
int ha_pmdk::rnd_pos(uchar *buf, uchar *pos)
{
  DBUG_ENTER("ha_pmdk::rnd_pos"); 
  DBUG_RETURN(0);
}


/**
  @brief
  ::info() is used to return information to the optimizer. See my_base.h for
  the complete description.

  @details
  Currently this table handler doesn't implement most of the fields really needed.
  SHOW also makes use of this data.

  You will probably want to have the following in your code:
  @code
  if (records < 2)
    records = 2;
  @endcode
  The reason is that the server will optimize for cases of only a single
  record. If, in a table scan, you don't know the number of records, it
  will probably be better to set records to two so you can return as many
  records as you need. Along with records, a few more variables you may wish
  to set are:
    records
    deleted
    data_file_length
    index_file_length
    delete_length
    check_time
  Take a look at the public variables in handler.h for more information.

  Called in filesort.cc, ha_heap.cc, item_sum.cc, opt_sum.cc, sql_delete.cc,
  sql_delete.cc, sql_derived.cc, sql_select.cc, sql_select.cc, sql_select.cc,
  sql_select.cc, sql_select.cc, sql_show.cc, sql_show.cc, sql_show.cc, sql_show.cc,
  sql_table.cc, sql_union.cc, and sql_update.cc.

  @see
  filesort.cc, ha_heap.cc, item_sum.cc, opt_sum.cc, sql_delete.cc, sql_delete.cc,
  sql_derived.cc, sql_select.cc, sql_select.cc, sql_select.cc, sql_select.cc,
  sql_select.cc, sql_show.cc, sql_show.cc, sql_show.cc, sql_show.cc, sql_table.cc,
  sql_union.cc and sql_update.cc
*/
int ha_pmdk::info(uint flag)
{
  DBUG_ENTER("ha_pmdk::info");
  DBUG_RETURN(0);
}


/**
  @brief
  extra() is called whenever the server wishes to send a hint to
  the storage engine. The myisam engine implements the most hints.
  ha_innodb.cc has the most exhaustive list of these hints.

    @see
  ha_innodb.cc
*/
int ha_pmdk::extra(enum ha_extra_function operation)
{
  DBUG_ENTER("ha_pmdk::extra");
  DBUG_RETURN(0);
}


/**
  @brief
  Used to delete all rows in a table, including cases of truncate and cases where
  the optimizer realizes that all rows will be removed as a result of an SQL statement.

  @details
  Called from item_sum.cc by Item_func_group_concat::clear(),
  Item_sum_count_distinct::clear(), and Item_func_group_concat::clear().
  Called from sql_delete.cc by mysql_delete().
  Called from sql_select.cc by JOIN::reinit().
  Called from sql_union.cc by st_select_lex_unit::exec().

  @see
  Item_func_group_concat::clear(), Item_sum_count_distinct::clear() and
  Item_func_group_concat::clear() in item_sum.cc;
  mysql_delete() in sql_delete.cc;
  JOIN::reinit() in sql_select.cc and
  st_select_lex_unit::exec() in sql_union.cc.
*/
int ha_pmdk::delete_all_rows()
{
  DBUG_ENTER("ha_pmdk::delete_all_rows");
  DBUG_RETURN(HA_ERR_WRONG_COMMAND);
}


/**
  @brief
  This create a lock on the table. If you are implementing a storage engine
  that can handle transacations look at ha_berkely.cc to see how you will
  want to go about doing this. Otherwise you should consider calling flock()
  here. Hint: Read the section "locking functions for mysql" in lock.cc to understand
  this.

  @details
  Called from lock.cc by lock_external() and unlock_external(). Also called
  from sql_table.cc by copy_data_between_tables().

  @see
  lock.cc by lock_external() and unlock_external() in lock.cc;
  the section "locking functions for mysql" in lock.cc;
  copy_data_between_tables() in sql_table.cc.
*/
int ha_pmdk::external_lock(THD *thd, int lock_type)
{
  DBUG_ENTER("ha_pmdk::external_lock");
  DBUG_RETURN(0);
}


/**
  @brief
  The idea with handler::store_lock() is: The statement decides which locks
  should be needed for the table. For updates/deletes/inserts we get WRITE
  locks, for SELECT... we get read locks.

  @details
  Before adding the lock into the table lock handler (see thr_lock.c),
  mysqld calls store lock with the requested locks. Store lock can now
  modify a write lock to a read lock (or some other lock), ignore the
  lock (if we don't want to use MySQL table locks at all), or add locks
  for many tables (like we do when we are using a MERGE handler).

  Berkeley DB, for pmdk, changes all WRITE locks to TL_WRITE_ALLOW_WRITE
  (which signals that we are doing WRITES, but are still allowing other
  readers and writers).

  When releasing locks, store_lock() is also called. In this case one
  usually doesn't have to do anything.

  In some exceptional cases MySQL may send a request for a TL_IGNORE;
  This means that we are requesting the same lock as last time and this
  should also be ignored. (This may happen when someone does a flush
  table when we have opened a part of the tables, in which case mysqld
  closes and reopens the tables and tries to get the same locks at last
  time). In the future we will probably try to remove this.

  Called from lock.cc by get_lock_data().

  @note
  In this method one should NEVER rely on table->in_use, it may, in fact,
  refer to a different thread! (this happens if get_lock_data() is called
  from mysql_lock_abort_for_thread() function)

  @see
  get_lock_data() in lock.cc
*/
THR_LOCK_DATA **ha_pmdk::store_lock(THD *thd,
                                       THR_LOCK_DATA **to,
                                       enum thr_lock_type lock_type)
{
  if (lock_type != TL_IGNORE && lock.type == TL_UNLOCK)
    lock.type=lock_type;
  *to++= &lock;
  return to;
}


/**
  @brief
  Used to delete a table. By the time delete_table() has been called all
  opened references to this table will have been closed (and your globally
  shared references released). The variable name will just be the name of
  the table. You will need to remove any files you have created at this point.

  @details
  If you do not implement this, the default delete_table() is called from
  handler.cc and it will delete all files with the file extensions returned
  by bas_ext().

  Called from handler.cc by delete_table and ha_create_table(). Only used
  during create if the table_flag HA_DROP_BEFORE_CREATE was specified for
  the storage engine.

  @see
  delete_table and ha_create_table() in handler.cc
*/
int ha_pmdk::delete_table(const char *name)
{
  DBUG_ENTER("ha_pmdk::delete_table");
  /* This is not implemented but we want someone to be able that it works. */
  DBUG_RETURN(0);
}


/**
  @brief
  Given a starting key and an ending key, estimate the number of rows that
  will exist between the two keys.

  @details
  end_key may be empty, in which case determine if start_key matches any rows.

  Called from opt_range.cc by check_quick_keys().

  @see
  check_quick_keys() in opt_range.cc
*/
ha_rows ha_pmdk::records_in_range(uint inx, key_range *min_key,
                                     key_range *max_key)
{
  DBUG_ENTER("ha_pmdk::records_in_range");
  DBUG_RETURN(10);                         // low number to force index usage
}


/**
  @brief
  create() is called to create a database. The variable name will have the name
  of the table.

  @details
  When create() is called you do not need to worry about
  opening the table. Also, the .frm file will have already been
  created so adjusting create_info is not necessary. You can overwrite
  the .frm file at this point if you wish to change the table
  definition, but there are no methods currently provided for doing
  so.

  Called from handle.cc by ha_create_table().

  @see
  ha_create_table() in handle.cc
*/

int ha_pmdk::create(const char *name, TABLE *table_arg,
                       HA_CREATE_INFO *create_info)
{

  char path[MAX_PATH_LEN];
  DBUG_ENTER("ha_pmdk::create");
  DBUG_PRINT("info", ("create"));

  snprintf(path, MAX_PATH_LEN, "%s%s", name, PMEMOBJ_EXT);
  PMEMobjpool *pop = pmemobj_create(path, name,PMEMOBJ_MIN_POOL, S_IRWXU);
  if (pop == NULL)
  {
    DBUG_PRINT("info", ("failed : %s error number : %d",path,errCodeMap[errno]));
    DBUG_RETURN(errCodeMap[errno]);
  } 
  DBUG_PRINT("info", ("Success"));
  pmemobj_close(pop);

  DBUG_RETURN(0);
}
struct st_mysql_storage_engine pmdk_storage_engine=
{ MYSQL_HANDLERTON_INTERFACE_VERSION };

static ulong srv_enum_var= 0;
static ulong srv_ulong_var= 0;
static double srv_double_var= 0;

const char *enum_var_names[]=
{
  "e1", "e2", NullS
};

TYPELIB enum_var_typelib=
{
  array_elements(enum_var_names) - 1, "enum_var_typelib",
  enum_var_names, NULL
};

static MYSQL_SYSVAR_ENUM(
  enum_var,                       // name
  srv_enum_var,                   // varname
  PLUGIN_VAR_RQCMDARG,            // opt
  "Sample ENUM system variable.", // comment
  NULL,                           // check
  NULL,                           // update
  0,                              // def
  &enum_var_typelib);             // typelib

static MYSQL_THDVAR_INT(int_var, PLUGIN_VAR_RQCMDARG, "-1..1",
  NULL, NULL, 0, -1, 1, 0);

static MYSQL_SYSVAR_ULONG(
  ulong_var,
  srv_ulong_var,
  PLUGIN_VAR_RQCMDARG,
  "0..1000",
  NULL,
  NULL,
  8,
  0,
  1000,
  0);

static MYSQL_SYSVAR_DOUBLE(
  double_var,
  srv_double_var,
  PLUGIN_VAR_RQCMDARG,
  "0.500000..1000.500000",
  NULL,
  NULL,
  8.5,
  0.5,
  1000.5,
  0);                             // reserved always 0

static MYSQL_THDVAR_DOUBLE(
  double_thdvar,
  PLUGIN_VAR_RQCMDARG,
  "0.500000..1000.500000",
  NULL,
  NULL,
  8.5,
  0.5,
  1000.5,
  0);

static struct st_mysql_sys_var* pmdk_system_variables[]= {
  MYSQL_SYSVAR(enum_var),
  MYSQL_SYSVAR(ulong_var),
  MYSQL_SYSVAR(int_var),
  MYSQL_SYSVAR(double_var),
  MYSQL_SYSVAR(double_thdvar),
  MYSQL_SYSVAR(varopt_default),
  NULL
};

// this is an pmdk of SHOW_SIMPLE_FUNC and of my_snprintf() service
// If this function would return an array, one should use SHOW_FUNC
static int show_func_pmdk(MYSQL_THD thd, struct st_mysql_show_var *var,
                             char *buf)
{
  var->type= SHOW_CHAR;
  var->value= buf; // it's of SHOW_VAR_FUNC_BUFF_SIZE bytes
  my_snprintf(buf, SHOW_VAR_FUNC_BUFF_SIZE,
              "enum_var is %lu, ulong_var is %lu, int_var is %d, "
              "double_var is %f, %.6b", // %b is a MySQL extension
              srv_enum_var, srv_ulong_var, THDVAR(thd, int_var),
              srv_double_var, "really");
  return 0;
}

static struct st_mysql_show_var func_status[]=
{
  {"func_pmdk",  (char *)show_func_pmdk, SHOW_SIMPLE_FUNC},
  {0,0,SHOW_UNDEF}
};

struct st_mysql_daemon unusable_pmdk=
{ MYSQL_DAEMON_INTERFACE_VERSION };

mysql_declare_plugin(pmdk)
{
  MYSQL_STORAGE_ENGINE_PLUGIN,
  &pmdk_storage_engine,
  "EXAMPLE",
  "Brian Aker, MySQL AB",
  "EXAMPLE storage engine",
  PLUGIN_LICENSE_GPL,
  pmdk_init_func,                            /* Plugin Init */
  NULL,                                         /* Plugin Deinit */
  0x0001 /* 0.1 */,
  func_status,                                  /* status variables */
  pmdk_system_variables,                     /* system variables */
  NULL,                                         /* config options */
  0,                                            /* flags */
}
mysql_declare_plugin_end;
maria_declare_plugin(pmdk)
{
  MYSQL_STORAGE_ENGINE_PLUGIN,
  &pmdk_storage_engine,
  "PMDK",
  "Brian Aker, MySQL AB",
  "Pmdk storage engine",
  PLUGIN_LICENSE_GPL,
  pmdk_init_func,                            /* Plugin Init */
  NULL,                                         /* Plugin Deinit */
  0x0001,                                       /* version number (0.1) */
  func_status,                                  /* status variables */
  pmdk_system_variables,                     /* system variables */
  "0.1",                                        /* string version */
  MariaDB_PLUGIN_MATURITY_EXPERIMENTAL          /* maturity */
},
{
  MYSQL_DAEMON_PLUGIN,
  &unusable_pmdk,
  "UNUSABLE",
  "Sergei Golubchik",
  "Unusable Daemon",
  PLUGIN_LICENSE_GPL,
  NULL,                                         /* Plugin Init */
  NULL,                                         /* Plugin Deinit */
  0x030E,                                       /* version number (3.14) */
  NULL,                                         /* status variables */
  NULL,                                         /* system variables */
  "3.14.15.926" ,                               /* version, as a string */
  MariaDB_PLUGIN_MATURITY_EXPERIMENTAL          /* maturity */
}
maria_declare_plugin_end;
