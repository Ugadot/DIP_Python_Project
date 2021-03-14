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
include external/libaom/CMakeFiles/aom_ports.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/libaom/CMakeFiles/aom_ports.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libaom/CMakeFiles/aom_ports.dir/progress.make

# Include the compile flags for this target's objects.
include external/libaom/CMakeFiles/aom_ports.dir/flags.make

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o: external/libaom/CMakeFiles/aom_ports.dir/flags.make
external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o: ../external/libaom/aom_ports/emms.asm
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/emms.asm

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/aom_ports.dir/aom_ports/emms.asm.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/emms.asm > CMakeFiles/aom_ports.dir/aom_ports/emms.asm.i

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/aom_ports.dir/aom_ports/emms.asm.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/emms.asm -o CMakeFiles/aom_ports.dir/aom_ports/emms.asm.s

external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o: external/libaom/CMakeFiles/aom_ports.dir/flags.make
external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o: external/libaom/gen_src/aom_ports_dummy.c
external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o: external/libaom/CMakeFiles/aom_ports.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o -MF CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o.d -o CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_ports_dummy.c

external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_ports_dummy.c > CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.i

external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_ports_dummy.c -o CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.s

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o: external/libaom/CMakeFiles/aom_ports.dir/flags.make
external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o: ../external/libaom/aom_ports/x86_abi_support.asm
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/x86_abi_support.asm

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/x86_abi_support.asm > CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.i

external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/aom_ports/x86_abi_support.asm -o CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.s

# Object files for target aom_ports
aom_ports_OBJECTS = \
"CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o" \
"CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o" \
"CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o"

# External object files for target aom_ports
aom_ports_EXTERNAL_OBJECTS =

external/libaom/libaom_ports.a: external/libaom/CMakeFiles/aom_ports.dir/aom_ports/emms.asm.o
external/libaom/libaom_ports.a: external/libaom/CMakeFiles/aom_ports.dir/gen_src/aom_ports_dummy.c.o
external/libaom/libaom_ports.a: external/libaom/CMakeFiles/aom_ports.dir/aom_ports/x86_abi_support.asm.o
external/libaom/libaom_ports.a: external/libaom/CMakeFiles/aom_ports.dir/build.make
external/libaom/libaom_ports.a: external/libaom/CMakeFiles/aom_ports.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libaom_ports.a"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_ports.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aom_ports.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/libaom/CMakeFiles/aom_ports.dir/build: external/libaom/libaom_ports.a
.PHONY : external/libaom/CMakeFiles/aom_ports.dir/build

external/libaom/CMakeFiles/aom_ports.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_ports.dir/cmake_clean.cmake
.PHONY : external/libaom/CMakeFiles/aom_ports.dir/clean

external/libaom/CMakeFiles/aom_ports.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/CMakeFiles/aom_ports.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libaom/CMakeFiles/aom_ports.dir/depend

