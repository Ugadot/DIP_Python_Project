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
CMAKE_SOURCE_DIR = /mnt/c/Users/user/Documents/DIP_Python_Project/cavif

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build

# Utility rule file for aom_version_check.

# Include any custom commands dependencies for this target.
include external/libaom/CMakeFiles/aom_version_check.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libaom/CMakeFiles/aom_version_check.dir/progress.make

external/libaom/CMakeFiles/aom_version_check:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating version info if necessary."
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake -DAOM_CONFIG_DIR=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom -DAOM_ROOT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom -DGIT_EXECUTABLE=/usr/bin/git -DPERL_EXECUTABLE=/usr/bin/perl -P /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/build/cmake/version.cmake

aom_version_check: external/libaom/CMakeFiles/aom_version_check
aom_version_check: external/libaom/CMakeFiles/aom_version_check.dir/build.make
.PHONY : aom_version_check

# Rule to build all files generated by this target.
external/libaom/CMakeFiles/aom_version_check.dir/build: aom_version_check
.PHONY : external/libaom/CMakeFiles/aom_version_check.dir/build

external/libaom/CMakeFiles/aom_version_check.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_version_check.dir/cmake_clean.cmake
.PHONY : external/libaom/CMakeFiles/aom_version_check.dir/clean

external/libaom/CMakeFiles/aom_version_check.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/CMakeFiles/aom_version_check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libaom/CMakeFiles/aom_version_check.dir/depend

