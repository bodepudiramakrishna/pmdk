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
include storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/depend.make

# Include the progress variables for this target.
include storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/progress.make

# Include the compile flags for this target's objects.
include storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/flags.make

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/flags.make
storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o: storage/mroonga/vendor/groonga/plugins/suggest/suggest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o"
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS)  -std=gnu99 -o CMakeFiles/suggest.dir/suggest.c.o   -c /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest/suggest.c

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/suggest.dir/suggest.c.i"
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS)  -std=gnu99 -E -dDI /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest/suggest.c > CMakeFiles/suggest.dir/suggest.c.i

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/suggest.dir/suggest.c.s"
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS)  -std=gnu99 -S /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest/suggest.c -o CMakeFiles/suggest.dir/suggest.c.s

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.requires:

.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.requires

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.provides: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.requires
	$(MAKE) -f storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/build.make storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.provides.build
.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.provides

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.provides.build: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o


# Object files for target suggest
suggest_OBJECTS = \
"CMakeFiles/suggest.dir/suggest.c.o"

# External object files for target suggest
suggest_EXTERNAL_OBJECTS =

storage/mroonga/vendor/groonga/plugins/suggest/libsuggest.a: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o
storage/mroonga/vendor/groonga/plugins/suggest/libsuggest.a: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/build.make
storage/mroonga/vendor/groonga/plugins/suggest/libsuggest.a: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tcs/server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsuggest.a"
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && $(CMAKE_COMMAND) -P CMakeFiles/suggest.dir/cmake_clean_target.cmake
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/suggest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/build: storage/mroonga/vendor/groonga/plugins/suggest/libsuggest.a

.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/build

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/requires: storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/suggest.c.o.requires

.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/requires

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/clean:
	cd /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest && $(CMAKE_COMMAND) -P CMakeFiles/suggest.dir/cmake_clean.cmake
.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/clean

storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/depend:
	cd /home/tcs/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tcs/server /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest /home/tcs/server /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest /home/tcs/server/storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : storage/mroonga/vendor/groonga/plugins/suggest/CMakeFiles/suggest.dir/depend

