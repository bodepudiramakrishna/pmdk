# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tcs/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tcs/server

# Include any dependencies generated for this target.
include storage/tokudb/CMakeFiles/tokudb.dir/depend.make

# Include the progress variables for this target.
include storage/tokudb/CMakeFiles/tokudb.dir/progress.make

# Include the compile flags for this target's objects.
include storage/tokudb/CMakeFiles/tokudb.dir/flags.make

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o: storage/tokudb/ha_tokudb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/ha_tokudb.cc.o -c /home/tcs/server/storage/tokudb/ha_tokudb.cc

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/ha_tokudb.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/ha_tokudb.cc > CMakeFiles/tokudb.dir/ha_tokudb.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/ha_tokudb.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/ha_tokudb.cc -o CMakeFiles/tokudb.dir/ha_tokudb.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o


storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o: storage/tokudb/tokudb_background.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/tokudb_background.cc.o -c /home/tcs/server/storage/tokudb/tokudb_background.cc

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/tokudb_background.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/tokudb_background.cc > CMakeFiles/tokudb.dir/tokudb_background.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/tokudb_background.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/tokudb_background.cc -o CMakeFiles/tokudb.dir/tokudb_background.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o


storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o: storage/tokudb/tokudb_information_schema.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o -c /home/tcs/server/storage/tokudb/tokudb_information_schema.cc

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/tokudb_information_schema.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/tokudb_information_schema.cc > CMakeFiles/tokudb.dir/tokudb_information_schema.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/tokudb_information_schema.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/tokudb_information_schema.cc -o CMakeFiles/tokudb.dir/tokudb_information_schema.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o


storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o: storage/tokudb/tokudb_sysvars.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o -c /home/tcs/server/storage/tokudb/tokudb_sysvars.cc

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/tokudb_sysvars.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/tokudb_sysvars.cc > CMakeFiles/tokudb.dir/tokudb_sysvars.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/tokudb_sysvars.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/tokudb_sysvars.cc -o CMakeFiles/tokudb.dir/tokudb_sysvars.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o


storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o: storage/tokudb/tokudb_thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/tokudb_thread.cc.o -c /home/tcs/server/storage/tokudb/tokudb_thread.cc

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/tokudb_thread.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/tokudb_thread.cc > CMakeFiles/tokudb.dir/tokudb_thread.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/tokudb_thread.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/tokudb_thread.cc -o CMakeFiles/tokudb.dir/tokudb_thread.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o


storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o: storage/tokudb/CMakeFiles/tokudb.dir/flags.make
storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o: storage/tokudb/tokudb_dir_cmd.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o -c /home/tcs/server/storage/tokudb/tokudb_dir_cmd.cc

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.i"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/tokudb/tokudb_dir_cmd.cc > CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.i

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.s"
	cd /home/tcs/server/storage/tokudb && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/tokudb/tokudb_dir_cmd.cc -o CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.s

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.requires:

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.requires

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.provides: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.requires
	$(MAKE) -f storage/tokudb/CMakeFiles/tokudb.dir/build.make storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.provides.build
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.provides

storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.provides.build: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o


# Object files for target tokudb
tokudb_OBJECTS = \
"CMakeFiles/tokudb.dir/ha_tokudb.cc.o" \
"CMakeFiles/tokudb.dir/tokudb_background.cc.o" \
"CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o" \
"CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o" \
"CMakeFiles/tokudb.dir/tokudb_thread.cc.o" \
"CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o"

# External object files for target tokudb
tokudb_EXTERNAL_OBJECTS =

storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/build.make
storage/tokudb/ha_tokudb.so: libservices/libmysqlservices.a
storage/tokudb/ha_tokudb.so: storage/tokudb/PerconaFT/src/libtokufractaltree_static.a
storage/tokudb/ha_tokudb.so: storage/tokudb/PerconaFT/portability/libtokuportability_static.a
storage/tokudb/ha_tokudb.so: /usr/lib/x86_64-linux-gnu/libz.so
storage/tokudb/ha_tokudb.so: storage/tokudb/CMakeFiles/tokudb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared module ha_tokudb.so"
	cd /home/tcs/server/storage/tokudb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tokudb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/tokudb/CMakeFiles/tokudb.dir/build: storage/tokudb/ha_tokudb.so

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/build

storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/ha_tokudb.cc.o.requires
storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_background.cc.o.requires
storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_information_schema.cc.o.requires
storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_sysvars.cc.o.requires
storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_thread.cc.o.requires
storage/tokudb/CMakeFiles/tokudb.dir/requires: storage/tokudb/CMakeFiles/tokudb.dir/tokudb_dir_cmd.cc.o.requires

.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/requires

storage/tokudb/CMakeFiles/tokudb.dir/clean:
	cd /home/tcs/server/storage/tokudb && $(CMAKE_COMMAND) -P CMakeFiles/tokudb.dir/cmake_clean.cmake
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/clean

storage/tokudb/CMakeFiles/tokudb.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/storage/tokudb /home/tcs/server /home/tcs/server/storage/tokudb /home/tcs/server/storage/tokudb/CMakeFiles/tokudb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/tokudb/CMakeFiles/tokudb.dir/depend

