# Install script for directory: /home/tcs/server/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/mysql")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql" TYPE FILE FILES "/home/tcs/server/include/mysqld_error.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES
    "/home/tcs/server/include/mysql.h"
    "/home/tcs/server/include/mysql_com.h"
    "/home/tcs/server/include/mysql_com_server.h"
    "/home/tcs/server/include/pack.h"
    "/home/tcs/server/include/my_byteorder.h"
    "/home/tcs/server/include/byte_order_generic.h"
    "/home/tcs/server/include/byte_order_generic_x86.h"
    "/home/tcs/server/include/byte_order_generic_x86_64.h"
    "/home/tcs/server/include/little_endian.h"
    "/home/tcs/server/include/big_endian.h"
    "/home/tcs/server/include/mysql_time.h"
    "/home/tcs/server/include/ma_dyncol.h"
    "/home/tcs/server/include/my_list.h"
    "/home/tcs/server/include/my_alloc.h"
    "/home/tcs/server/include/typelib.h"
    "/home/tcs/server/include/my_dbug.h"
    "/home/tcs/server/include/m_string.h"
    "/home/tcs/server/include/my_sys.h"
    "/home/tcs/server/include/my_xml.h"
    "/home/tcs/server/include/mysql_embed.h"
    "/home/tcs/server/include/my_decimal_limits.h"
    "/home/tcs/server/include/my_pthread.h"
    "/home/tcs/server/include/decimal.h"
    "/home/tcs/server/include/errmsg.h"
    "/home/tcs/server/include/my_global.h"
    "/home/tcs/server/include/my_net.h"
    "/home/tcs/server/include/my_getopt.h"
    "/home/tcs/server/include/sslopt-longopts.h"
    "/home/tcs/server/include/my_dir.h"
    "/home/tcs/server/include/sslopt-vars.h"
    "/home/tcs/server/include/sslopt-case.h"
    "/home/tcs/server/include/my_valgrind.h"
    "/home/tcs/server/include/sql_common.h"
    "/home/tcs/server/include/keycache.h"
    "/home/tcs/server/include/m_ctype.h"
    "/home/tcs/server/include/my_attribute.h"
    "/home/tcs/server/include/my_compiler.h"
    "/home/tcs/server/include/handler_state.h"
    "/home/tcs/server/include/handler_ername.h"
    "/home/tcs/server/include/json_lib.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES "/home/tcs/server/include/mysql_version.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES "/home/tcs/server/include/my_config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES "/home/tcs/server/include/mysqld_ername.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES "/home/tcs/server/include/mysqld_error.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server" TYPE FILE FILES "/home/tcs/server/include/sql_state.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server/mysql" TYPE DIRECTORY FILES "/home/tcs/server/include/mysql/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mysql/server/private" TYPE DIRECTORY FILES "/home/tcs/server/include/." FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/CMakeFiles$" EXCLUDE REGEX "/mysql$" EXCLUDE REGEX "\\./(mysql\\.h|mysql_com\\.h|mysql_com_server\\.h|pack\\.h|my_byteorder\\.h|byte_order_generic\\.h|byte_order_generic_x86\\.h|byte_order_generic_x86_64\\.h|little_endian\\.h|big_endian\\.h|mysql_time\\.h|ma_dyncol\\.h|my_list\\.h|my_alloc\\.h|typelib\\.h|my_dbug\\.h|m_string\\.h|my_sys\\.h|my_xml\\.h|mysql_embed\\.h|my_decimal_limits\\.h|my_pthread\\.h|decimal\\.h|errmsg\\.h|my_global\\.h|my_net\\.h|my_getopt\\.h|sslopt-longopts\\.h|my_dir\\.h|sslopt-vars\\.h|sslopt-case\\.h|my_valgrind\\.h|sql_common\\.h|keycache\\.h|m_ctype\\.h|my_attribute\\.h|my_compiler\\.h|handler_state\\.h|handler_ername\\.h|json_lib\\.h|mysql_version\\.h|my_config\\.h|mysqld_ername\\.h|mysqld_error\\.h|sql_state\\.h$)" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  FILE(WRITE $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/include/mysql/my_global.h
"/* Do not edit this file directly, it was auto-generated by cmake */

#warning This file should not be included by clients, include only <mysql.h>

")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  FILE(WRITE $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/include/mysql/my_config.h
"/* Do not edit this file directly, it was auto-generated by cmake */

#warning This file should not be included by clients, include only <mysql.h>

")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  FILE(WRITE $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/include/mysql/my_sys.h
"/* Do not edit this file directly, it was auto-generated by cmake */

#warning This file should not be included by clients, include only <mysql.h>

")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  FILE(WRITE $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/include/mysql/mysql_version.h
"/* Do not edit this file directly, it was auto-generated by cmake */

#warning This file should not be included by clients, include only <mysql.h>

#include <mariadb_version.h>
#define LIBMYSQL_VERSION MARIADB_CLIENT_VERSION_STR

")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  FILE(WRITE $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/include/mysql/mysql_com.h
"/* Do not edit this file directly, it was auto-generated by cmake */

#warning This file should not be included by clients, include only <mysql.h>

#include <mariadb_com.h>

")
endif()

