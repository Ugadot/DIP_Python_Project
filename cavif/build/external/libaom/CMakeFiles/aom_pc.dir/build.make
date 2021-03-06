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

# Include any dependencies generated for this target.
include external/libaom/CMakeFiles/aom_pc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/libaom/CMakeFiles/aom_pc.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libaom/CMakeFiles/aom_pc.dir/progress.make

# Include the compile flags for this target's objects.
include external/libaom/CMakeFiles/aom_pc.dir/flags.make

external/libaom/aom.pc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Writing aom.pc"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /mnt/c/Users/user/Documents/DIP_Python_Project/cmake/cmake-3.20.0-rc3-linux-x86_64/bin/cmake -DAOM_CONFIG_DIR=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom -DAOM_ROOT=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_INSTALL_BINDIR=bin -DCMAKE_INSTALL_INCLUDEDIR=include -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_PROJECT_NAME=cavif -DCONFIG_MULTITHREAD=1 -DHAVE_PTHREAD_H=1 -P /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/build/cmake/pkg_config.cmake

external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o: external/libaom/CMakeFiles/aom_pc.dir/flags.make
external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o: external/libaom/gen_src/aom_pc_dummy.c
external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o: external/libaom/aom.pc
external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o: external/libaom/CMakeFiles/aom_pc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o -MF CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o.d -o CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_pc_dummy.c

external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_pc_dummy.c > CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.i

external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_pc_dummy.c -o CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.s

# Object files for target aom_pc
aom_pc_OBJECTS = \
"CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o"

# External object files for target aom_pc
aom_pc_EXTERNAL_OBJECTS =

external/libaom/libaom_pc.a: external/libaom/CMakeFiles/aom_pc.dir/gen_src/aom_pc_dummy.c.o
external/libaom/libaom_pc.a: external/libaom/CMakeFiles/aom_pc.dir/build.make
external/libaom/libaom_pc.a: external/libaom/CMakeFiles/aom_pc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libaom_pc.a"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_pc.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aom_pc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/libaom/CMakeFiles/aom_pc.dir/build: external/libaom/libaom_pc.a
.PHONY : external/libaom/CMakeFiles/aom_pc.dir/build

external/libaom/CMakeFiles/aom_pc.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_pc.dir/cmake_clean.cmake
.PHONY : external/libaom/CMakeFiles/aom_pc.dir/clean

external/libaom/CMakeFiles/aom_pc.dir/depend: external/libaom/aom.pc
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/CMakeFiles/aom_pc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libaom/CMakeFiles/aom_pc.dir/depend

