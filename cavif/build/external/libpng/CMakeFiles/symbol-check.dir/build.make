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

# Utility rule file for symbol-check.

# Include any custom commands dependencies for this target.
include external/libpng/CMakeFiles/symbol-check.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libpng/CMakeFiles/symbol-check.dir/progress.make

external/libpng/CMakeFiles/symbol-check: external/libpng/scripts/symbols.chk

external/libpng/scripts/symbols.chk: external/libpng/scripts/symbols.out
external/libpng/scripts/symbols.chk: ../external/libpng/scripts/checksym.awk
external/libpng/scripts/symbols.chk: ../external/libpng/scripts/symbols.def
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating scripts/symbols.chk"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng && /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake -DINPUT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/scripts/symbols.out -DOUTPUT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/scripts/symbols.chk -P /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/scripts/genchk.cmake

external/libpng/scripts/symbols.out: ../external/libpng/scripts/symbols.c
external/libpng/scripts/symbols.out: ../external/libpng/png.h
external/libpng/scripts/symbols.out: ../external/libpng/pngconf.h
external/libpng/scripts/symbols.out: ../external/libpng/scripts/pnglibconf.h.prebuilt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating scripts/symbols.out"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng && /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake -DINPUT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libpng/scripts/symbols.c -DOUTPUT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/scripts/symbols.out -P /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/scripts/genout.cmake

symbol-check: external/libpng/CMakeFiles/symbol-check
symbol-check: external/libpng/scripts/symbols.chk
symbol-check: external/libpng/scripts/symbols.out
symbol-check: external/libpng/CMakeFiles/symbol-check.dir/build.make
.PHONY : symbol-check

# Rule to build all files generated by this target.
external/libpng/CMakeFiles/symbol-check.dir/build: symbol-check
.PHONY : external/libpng/CMakeFiles/symbol-check.dir/build

external/libpng/CMakeFiles/symbol-check.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng && $(CMAKE_COMMAND) -P CMakeFiles/symbol-check.dir/cmake_clean.cmake
.PHONY : external/libpng/CMakeFiles/symbol-check.dir/clean

external/libpng/CMakeFiles/symbol-check.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libpng /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libpng/CMakeFiles/symbol-check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libpng/CMakeFiles/symbol-check.dir/depend

