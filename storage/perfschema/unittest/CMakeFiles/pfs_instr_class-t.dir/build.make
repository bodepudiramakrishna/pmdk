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
include storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/depend.make

# Include the progress variables for this target.
include storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/progress.make

# Include the compile flags for this target's objects.
include storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/flags.make

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/flags.make
storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o: storage/perfschema/unittest/pfs_instr_class-t.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o"
	cd /home/tcs/server/storage/perfschema/unittest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o -c /home/tcs/server/storage/perfschema/unittest/pfs_instr_class-t.cc

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.i"
	cd /home/tcs/server/storage/perfschema/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E -dDI /home/tcs/server/storage/perfschema/unittest/pfs_instr_class-t.cc > CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.i

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.s"
	cd /home/tcs/server/storage/perfschema/unittest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tcs/server/storage/perfschema/unittest/pfs_instr_class-t.cc -o CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.s

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.requires:

.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.requires

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.provides: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.requires
	$(MAKE) -f storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/build.make storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.provides.build
.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.provides

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.provides.build: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o


# Object files for target pfs_instr_class-t
pfs_instr_class__t_OBJECTS = \
"CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o"

# External object files for target pfs_instr_class-t
pfs_instr_class__t_EXTERNAL_OBJECTS =

storage/perfschema/unittest/pfs_instr_class-t: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o
storage/perfschema/unittest/pfs_instr_class-t: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/build.make
storage/perfschema/unittest/pfs_instr_class-t: unittest/mytap/libmytap.a
storage/perfschema/unittest/pfs_instr_class-t: storage/perfschema/libperfschema.a
storage/perfschema/unittest/pfs_instr_class-t: mysys/libmysys.a
storage/perfschema/unittest/pfs_instr_class-t: storage/perfschema/unittest/libpfs_server_stubs.a
storage/perfschema/unittest/pfs_instr_class-t: dbug/libdbug.a
storage/perfschema/unittest/pfs_instr_class-t: mysys_ssl/libmysys_ssl.a
storage/perfschema/unittest/pfs_instr_class-t: mysys/libmysys.a
storage/perfschema/unittest/pfs_instr_class-t: dbug/libdbug.a
storage/perfschema/unittest/pfs_instr_class-t: mysys_ssl/libmysys_ssl.a
storage/perfschema/unittest/pfs_instr_class-t: /usr/lib/x86_64-linux-gnu/libz.so
storage/perfschema/unittest/pfs_instr_class-t: strings/libstrings.a
storage/perfschema/unittest/pfs_instr_class-t: /usr/lib/x86_64-linux-gnu/libssl.so
storage/perfschema/unittest/pfs_instr_class-t: /usr/lib/x86_64-linux-gnu/libcrypto.so
storage/perfschema/unittest/pfs_instr_class-t: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pfs_instr_class-t"
	cd /home/tcs/server/storage/perfschema/unittest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pfs_instr_class-t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/build: storage/perfschema/unittest/pfs_instr_class-t

.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/build

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/requires: storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/pfs_instr_class-t.cc.o.requires

.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/requires

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/clean:
	cd /home/tcs/server/storage/perfschema/unittest && $(CMAKE_COMMAND) -P CMakeFiles/pfs_instr_class-t.dir/cmake_clean.cmake
.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/clean

storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/storage/perfschema/unittest /home/tcs/server /home/tcs/server/storage/perfschema/unittest /home/tcs/server/storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/perfschema/unittest/CMakeFiles/pfs_instr_class-t.dir/depend

