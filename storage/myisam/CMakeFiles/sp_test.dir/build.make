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
include storage/myisam/CMakeFiles/sp_test.dir/depend.make

# Include the progress variables for this target.
include storage/myisam/CMakeFiles/sp_test.dir/progress.make

# Include the compile flags for this target's objects.
include storage/myisam/CMakeFiles/sp_test.dir/flags.make

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o: storage/myisam/CMakeFiles/sp_test.dir/flags.make
storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o: storage/myisam/sp_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o"
	cd /home/tcs/server/storage/myisam && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sp_test.dir/sp_test.c.o   -c /home/tcs/server/storage/myisam/sp_test.c

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sp_test.dir/sp_test.c.i"
	cd /home/tcs/server/storage/myisam && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E -dDI /home/tcs/server/storage/myisam/sp_test.c > CMakeFiles/sp_test.dir/sp_test.c.i

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sp_test.dir/sp_test.c.s"
	cd /home/tcs/server/storage/myisam && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tcs/server/storage/myisam/sp_test.c -o CMakeFiles/sp_test.dir/sp_test.c.s

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.requires:

.PHONY : storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.requires

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.provides: storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.requires
	$(MAKE) -f storage/myisam/CMakeFiles/sp_test.dir/build.make storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.provides.build
.PHONY : storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.provides

storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.provides.build: storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o


# Object files for target sp_test
sp_test_OBJECTS = \
"CMakeFiles/sp_test.dir/sp_test.c.o"

# External object files for target sp_test
sp_test_EXTERNAL_OBJECTS =

storage/myisam/sp_test: storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o
storage/myisam/sp_test: storage/myisam/CMakeFiles/sp_test.dir/build.make
storage/myisam/sp_test: storage/myisam/libmyisam.a
storage/myisam/sp_test: mysys/libmysys.a
storage/myisam/sp_test: dbug/libdbug.a
storage/myisam/sp_test: mysys_ssl/libmysys_ssl.a
storage/myisam/sp_test: mysys/libmysys.a
storage/myisam/sp_test: dbug/libdbug.a
storage/myisam/sp_test: mysys_ssl/libmysys_ssl.a
storage/myisam/sp_test: /usr/lib/x86_64-linux-gnu/libz.so
storage/myisam/sp_test: strings/libstrings.a
storage/myisam/sp_test: /usr/lib/x86_64-linux-gnu/libssl.so
storage/myisam/sp_test: /usr/lib/x86_64-linux-gnu/libcrypto.so
storage/myisam/sp_test: storage/myisam/CMakeFiles/sp_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sp_test"
	cd /home/tcs/server/storage/myisam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sp_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/myisam/CMakeFiles/sp_test.dir/build: storage/myisam/sp_test

.PHONY : storage/myisam/CMakeFiles/sp_test.dir/build

storage/myisam/CMakeFiles/sp_test.dir/requires: storage/myisam/CMakeFiles/sp_test.dir/sp_test.c.o.requires

.PHONY : storage/myisam/CMakeFiles/sp_test.dir/requires

storage/myisam/CMakeFiles/sp_test.dir/clean:
	cd /home/tcs/server/storage/myisam && $(CMAKE_COMMAND) -P CMakeFiles/sp_test.dir/cmake_clean.cmake
.PHONY : storage/myisam/CMakeFiles/sp_test.dir/clean

storage/myisam/CMakeFiles/sp_test.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/storage/myisam /home/tcs/server /home/tcs/server/storage/myisam /home/tcs/server/storage/myisam/CMakeFiles/sp_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/myisam/CMakeFiles/sp_test.dir/depend

