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
include storage/maria/CMakeFiles/aria_dump_log.dir/depend.make

# Include the progress variables for this target.
include storage/maria/CMakeFiles/aria_dump_log.dir/progress.make

# Include the compile flags for this target's objects.
include storage/maria/CMakeFiles/aria_dump_log.dir/flags.make

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o: storage/maria/CMakeFiles/aria_dump_log.dir/flags.make
storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o: storage/maria/maria_dump_log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o   -c /home/tcs/server/storage/maria/maria_dump_log.c

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aria_dump_log.dir/maria_dump_log.c.i"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E -dDI /home/tcs/server/storage/maria/maria_dump_log.c > CMakeFiles/aria_dump_log.dir/maria_dump_log.c.i

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aria_dump_log.dir/maria_dump_log.c.s"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tcs/server/storage/maria/maria_dump_log.c -o CMakeFiles/aria_dump_log.dir/maria_dump_log.c.s

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.requires:

.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.requires

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.provides: storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.requires
	$(MAKE) -f storage/maria/CMakeFiles/aria_dump_log.dir/build.make storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.provides.build
.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.provides

storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.provides.build: storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o


storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o: storage/maria/CMakeFiles/aria_dump_log.dir/flags.make
storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o: storage/maria/unittest/ma_loghandler_examples.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o   -c /home/tcs/server/storage/maria/unittest/ma_loghandler_examples.c

storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.i"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E -dDI /home/tcs/server/storage/maria/unittest/ma_loghandler_examples.c > CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.i

storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.s"
	cd /home/tcs/server/storage/maria && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tcs/server/storage/maria/unittest/ma_loghandler_examples.c -o CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.s

storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.requires:

.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.requires

storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.provides: storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.requires
	$(MAKE) -f storage/maria/CMakeFiles/aria_dump_log.dir/build.make storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.provides.build
.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.provides

storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.provides.build: storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o


# Object files for target aria_dump_log
aria_dump_log_OBJECTS = \
"CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o" \
"CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o"

# External object files for target aria_dump_log
aria_dump_log_EXTERNAL_OBJECTS =

storage/maria/aria_dump_log: storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o
storage/maria/aria_dump_log: storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o
storage/maria/aria_dump_log: storage/maria/CMakeFiles/aria_dump_log.dir/build.make
storage/maria/aria_dump_log: storage/maria/libaria.a
storage/maria/aria_dump_log: storage/myisam/libmyisam.a
storage/maria/aria_dump_log: mysys/libmysys.a
storage/maria/aria_dump_log: mysys_ssl/libmysys_ssl.a
storage/maria/aria_dump_log: dbug/libdbug.a
storage/maria/aria_dump_log: mysys/libmysys.a
storage/maria/aria_dump_log: mysys_ssl/libmysys_ssl.a
storage/maria/aria_dump_log: dbug/libdbug.a
storage/maria/aria_dump_log: /usr/lib/x86_64-linux-gnu/libz.so
storage/maria/aria_dump_log: strings/libstrings.a
storage/maria/aria_dump_log: /usr/lib/x86_64-linux-gnu/libssl.so
storage/maria/aria_dump_log: /usr/lib/x86_64-linux-gnu/libcrypto.so
storage/maria/aria_dump_log: storage/maria/CMakeFiles/aria_dump_log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable aria_dump_log"
	cd /home/tcs/server/storage/maria && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aria_dump_log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/maria/CMakeFiles/aria_dump_log.dir/build: storage/maria/aria_dump_log

.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/build

storage/maria/CMakeFiles/aria_dump_log.dir/requires: storage/maria/CMakeFiles/aria_dump_log.dir/maria_dump_log.c.o.requires
storage/maria/CMakeFiles/aria_dump_log.dir/requires: storage/maria/CMakeFiles/aria_dump_log.dir/unittest/ma_loghandler_examples.c.o.requires

.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/requires

storage/maria/CMakeFiles/aria_dump_log.dir/clean:
	cd /home/tcs/server/storage/maria && $(CMAKE_COMMAND) -P CMakeFiles/aria_dump_log.dir/cmake_clean.cmake
.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/clean

storage/maria/CMakeFiles/aria_dump_log.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/storage/maria /home/tcs/server /home/tcs/server/storage/maria /home/tcs/server/storage/maria/CMakeFiles/aria_dump_log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/maria/CMakeFiles/aria_dump_log.dir/depend

