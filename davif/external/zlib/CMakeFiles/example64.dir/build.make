# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif

# Include any dependencies generated for this target.
include external/zlib/CMakeFiles/example64.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/zlib/CMakeFiles/example64.dir/compiler_depend.make

# Include the progress variables for this target.
include external/zlib/CMakeFiles/example64.dir/progress.make

# Include the compile flags for this target's objects.
include external/zlib/CMakeFiles/example64.dir/flags.make

external/zlib/CMakeFiles/example64.dir/test/example.o: external/zlib/CMakeFiles/example64.dir/flags.make
external/zlib/CMakeFiles/example64.dir/test/example.o: external/zlib/test/example.c
external/zlib/CMakeFiles/example64.dir/test/example.o: external/zlib/CMakeFiles/example64.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/zlib/CMakeFiles/example64.dir/test/example.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/zlib/CMakeFiles/example64.dir/test/example.o -MF CMakeFiles/example64.dir/test/example.o.d -o CMakeFiles/example64.dir/test/example.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib/test/example.c

external/zlib/CMakeFiles/example64.dir/test/example.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example64.dir/test/example.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib/test/example.c > CMakeFiles/example64.dir/test/example.i

external/zlib/CMakeFiles/example64.dir/test/example.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example64.dir/test/example.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib/test/example.c -o CMakeFiles/example64.dir/test/example.s

# Object files for target example64
example64_OBJECTS = \
"CMakeFiles/example64.dir/test/example.o"

# External object files for target example64
example64_EXTERNAL_OBJECTS =

external/zlib/example64: external/zlib/CMakeFiles/example64.dir/test/example.o
external/zlib/example64: external/zlib/CMakeFiles/example64.dir/build.make
external/zlib/example64: external/zlib/libz.so.1.2.11
external/zlib/example64: external/zlib/CMakeFiles/example64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable example64"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example64.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/zlib/CMakeFiles/example64.dir/build: external/zlib/example64
.PHONY : external/zlib/CMakeFiles/example64.dir/build

external/zlib/CMakeFiles/example64.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib && $(CMAKE_COMMAND) -P CMakeFiles/example64.dir/cmake_clean.cmake
.PHONY : external/zlib/CMakeFiles/example64.dir/clean

external/zlib/CMakeFiles/example64.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib /mnt/c/Users/user/Documents/DIP_Python_Project/davif/davif/external/zlib/CMakeFiles/example64.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/zlib/CMakeFiles/example64.dir/depend

