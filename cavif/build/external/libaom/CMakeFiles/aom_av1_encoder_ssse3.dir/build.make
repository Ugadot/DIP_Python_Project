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
include external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/progress.make

# Include the compile flags for this target's objects.
include external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/flags.make

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o: ../external/libaom/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm > CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.i

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm -o CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.s

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o: external/libaom/gen_src/aom_av1_encoder_ssse3_dummy.c
external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o -MF CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o.d -o CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_av1_encoder_ssse3_dummy.c

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_av1_encoder_ssse3_dummy.c > CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.i

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/gen_src/aom_av1_encoder_ssse3_dummy.c -o CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.s

# Object files for target aom_av1_encoder_ssse3
aom_av1_encoder_ssse3_OBJECTS = \
"CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o" \
"CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o"

# External object files for target aom_av1_encoder_ssse3
aom_av1_encoder_ssse3_EXTERNAL_OBJECTS =

external/libaom/libaom_av1_encoder_ssse3.a: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/av1/encoder/x86/av1_quantize_ssse3_x86_64.asm.o
external/libaom/libaom_av1_encoder_ssse3.a: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/gen_src/aom_av1_encoder_ssse3_dummy.c.o
external/libaom/libaom_av1_encoder_ssse3.a: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/build.make
external/libaom/libaom_av1_encoder_ssse3.a: external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libaom_av1_encoder_ssse3.a"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_av1_encoder_ssse3.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aom_av1_encoder_ssse3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/build: external/libaom/libaom_av1_encoder_ssse3.a
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/build

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_av1_encoder_ssse3.dir/cmake_clean.cmake
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/clean

external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_ssse3.dir/depend
