# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/lcms_repo"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/lcms_repo-build"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/tmp"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/lcms_repo-stamp"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src"
  "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/lcms_repo-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
  file(MAKE_DIRECTORY "/mnt/c/Users/user/Documents/DIP_Python_Project/cavif/build/src/lcms_repo-stamp/${subDir}")
endforeach()
