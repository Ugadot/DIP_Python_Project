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
include external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.make

# Include the progress variables for this target.
include external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/progress.make

# Include the compile flags for this target's objects.
include external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o: ../external/libaom/av1/encoder/x86/av1_fwd_txfm1d_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm1d_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm1d_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm1d_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o: ../external/libaom/av1/encoder/x86/av1_fwd_txfm2d_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm2d_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm2d_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_fwd_txfm2d_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o: ../external/libaom/av1/encoder/x86/av1_highbd_quantize_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_highbd_quantize_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_highbd_quantize_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/av1_highbd_quantize_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o: ../external/libaom/av1/encoder/x86/corner_match_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/corner_match_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/corner_match_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/corner_match_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o: ../external/libaom/av1/encoder/x86/encodetxb_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/encodetxb_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/encodetxb_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/encodetxb_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o: ../external/libaom/av1/encoder/x86/highbd_fwd_txfm_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/highbd_fwd_txfm_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/highbd_fwd_txfm_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/highbd_fwd_txfm_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o: ../external/libaom/av1/encoder/x86/rdopt_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/rdopt_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/rdopt_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/rdopt_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o: ../external/libaom/av1/encoder/x86/temporal_filter_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/temporal_filter_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/temporal_filter_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/temporal_filter_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.s

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/flags.make
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o: ../external/libaom/av1/encoder/x86/pickrst_sse4.c
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o -MF CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o.d -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o -c /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/pickrst_sse4.c

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.i"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/pickrst_sse4.c > CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.i

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.s"
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && /usr/bin/gcc-8 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom/av1/encoder/x86/pickrst_sse4.c -o CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.s

aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm1d_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_fwd_txfm2d_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/av1_highbd_quantize_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/corner_match_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/encodetxb_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/highbd_fwd_txfm_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/rdopt_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/temporal_filter_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/av1/encoder/x86/pickrst_sse4.c.o
aom_av1_encoder_sse4_intrinsics: external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/build.make
.PHONY : aom_av1_encoder_sse4_intrinsics

# Rule to build all files generated by this target.
external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/build: aom_av1_encoder_sse4_intrinsics
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/build

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/clean:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom && $(CMAKE_COMMAND) -P CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/cmake_clean.cmake
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/clean

external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/depend:
	cd /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/user/Documents/DIP_Python_Project/cavif /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom /mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libaom/CMakeFiles/aom_av1_encoder_sse4_intrinsics.dir/depend
