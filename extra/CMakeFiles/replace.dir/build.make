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
include extra/CMakeFiles/replace.dir/depend.make

# Include the progress variables for this target.
include extra/CMakeFiles/replace.dir/progress.make

# Include the compile flags for this target's objects.
include extra/CMakeFiles/replace.dir/flags.make

extra/CMakeFiles/replace.dir/replace.c.o: extra/CMakeFiles/replace.dir/flags.make
extra/CMakeFiles/replace.dir/replace.c.o: extra/replace.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object extra/CMakeFiles/replace.dir/replace.c.o"
	cd /home/tcs/server/extra && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/replace.dir/replace.c.o   -c /home/tcs/server/extra/replace.c

extra/CMakeFiles/replace.dir/replace.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/replace.dir/replace.c.i"
	cd /home/tcs/server/extra && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E -dDI /home/tcs/server/extra/replace.c > CMakeFiles/replace.dir/replace.c.i

extra/CMakeFiles/replace.dir/replace.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/replace.dir/replace.c.s"
	cd /home/tcs/server/extra && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tcs/server/extra/replace.c -o CMakeFiles/replace.dir/replace.c.s

extra/CMakeFiles/replace.dir/replace.c.o.requires:

.PHONY : extra/CMakeFiles/replace.dir/replace.c.o.requires

extra/CMakeFiles/replace.dir/replace.c.o.provides: extra/CMakeFiles/replace.dir/replace.c.o.requires
	$(MAKE) -f extra/CMakeFiles/replace.dir/build.make extra/CMakeFiles/replace.dir/replace.c.o.provides.build
.PHONY : extra/CMakeFiles/replace.dir/replace.c.o.provides

extra/CMakeFiles/replace.dir/replace.c.o.provides.build: extra/CMakeFiles/replace.dir/replace.c.o


# Object files for target replace
replace_OBJECTS = \
"CMakeFiles/replace.dir/replace.c.o"

# External object files for target replace
replace_EXTERNAL_OBJECTS =

extra/replace: extra/CMakeFiles/replace.dir/replace.c.o
extra/replace: extra/CMakeFiles/replace.dir/build.make
extra/replace: mysys/libmysys.a
extra/replace: dbug/libdbug.a
extra/replace: mysys_ssl/libmysys_ssl.a
extra/replace: mysys/libmysys.a
extra/replace: dbug/libdbug.a
extra/replace: mysys_ssl/libmysys_ssl.a
extra/replace: /usr/lib/x86_64-linux-gnu/libz.so
extra/replace: strings/libstrings.a
extra/replace: /usr/lib/x86_64-linux-gnu/libssl.so
extra/replace: /usr/lib/x86_64-linux-gnu/libcrypto.so
extra/replace: extra/CMakeFiles/replace.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable replace"
	cd /home/tcs/server/extra && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/replace.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extra/CMakeFiles/replace.dir/build: extra/replace

.PHONY : extra/CMakeFiles/replace.dir/build

extra/CMakeFiles/replace.dir/requires: extra/CMakeFiles/replace.dir/replace.c.o.requires

.PHONY : extra/CMakeFiles/replace.dir/requires

extra/CMakeFiles/replace.dir/clean:
	cd /home/tcs/server/extra && $(CMAKE_COMMAND) -P CMakeFiles/replace.dir/cmake_clean.cmake
.PHONY : extra/CMakeFiles/replace.dir/clean

extra/CMakeFiles/replace.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/extra /home/tcs/server /home/tcs/server/extra /home/tcs/server/extra/CMakeFiles/replace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extra/CMakeFiles/replace.dir/depend

