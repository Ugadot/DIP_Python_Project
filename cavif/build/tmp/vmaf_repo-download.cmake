# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(REMOVE_RECURSE "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/vmaf_repo")

# Copy the _contents_ of the source dir into the destination dir, hence the
# trailing slash on the from_dir
file(COPY "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/external/vmaf/libvmaf/" DESTINATION "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/vmaf_repo")
