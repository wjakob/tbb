# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.6.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.6.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johnsonhj/src/tbb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release

# Include any dependencies generated for this target.
include CMakeFiles/test_task.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_task.dir/flags.make

CMakeFiles/test_task.dir/src/test/test_task.cpp.o: CMakeFiles/test_task.dir/flags.make
CMakeFiles/test_task.dir/src/test/test_task.cpp.o: ../../src/test/test_task.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_task.dir/src/test/test_task.cpp.o"
	/usr/local/bin/g++-6   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_task.dir/src/test/test_task.cpp.o -c /Users/johnsonhj/src/tbb/src/test/test_task.cpp

CMakeFiles/test_task.dir/src/test/test_task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_task.dir/src/test/test_task.cpp.i"
	/usr/local/bin/g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnsonhj/src/tbb/src/test/test_task.cpp > CMakeFiles/test_task.dir/src/test/test_task.cpp.i

CMakeFiles/test_task.dir/src/test/test_task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_task.dir/src/test/test_task.cpp.s"
	/usr/local/bin/g++-6  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnsonhj/src/tbb/src/test/test_task.cpp -o CMakeFiles/test_task.dir/src/test/test_task.cpp.s

CMakeFiles/test_task.dir/src/test/test_task.cpp.o.requires:

.PHONY : CMakeFiles/test_task.dir/src/test/test_task.cpp.o.requires

CMakeFiles/test_task.dir/src/test/test_task.cpp.o.provides: CMakeFiles/test_task.dir/src/test/test_task.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_task.dir/build.make CMakeFiles/test_task.dir/src/test/test_task.cpp.o.provides.build
.PHONY : CMakeFiles/test_task.dir/src/test/test_task.cpp.o.provides

CMakeFiles/test_task.dir/src/test/test_task.cpp.o.provides.build: CMakeFiles/test_task.dir/src/test/test_task.cpp.o


# Object files for target test_task
test_task_OBJECTS = \
"CMakeFiles/test_task.dir/src/test/test_task.cpp.o"

# External object files for target test_task
test_task_EXTERNAL_OBJECTS =

test_task: CMakeFiles/test_task.dir/src/test/test_task.cpp.o
test_task: CMakeFiles/test_task.dir/build.make
test_task: libtbb.dylib
test_task: libtbbmalloc.dylib
test_task: /usr/lib/libdl.dylib
test_task: CMakeFiles/test_task.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_task"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_task.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_task.dir/build: test_task

.PHONY : CMakeFiles/test_task.dir/build

CMakeFiles/test_task.dir/requires: CMakeFiles/test_task.dir/src/test/test_task.cpp.o.requires

.PHONY : CMakeFiles/test_task.dir/requires

CMakeFiles/test_task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_task.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_task.dir/clean

CMakeFiles/test_task.dir/depend:
	cd /Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnsonhj/src/tbb /Users/johnsonhj/src/tbb /Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release /Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release /Users/johnsonhj/src/tbb/build/macos_intel64_clang_cc7.3.0_os10.11.6_release/CMakeFiles/test_task.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_task.dir/depend

