# THis is the main CMake file for the sample project.
#
# Ed Hartnett, 6/2/23
cmake_minimum_required(VERSION 3.15)

# Read the VERSION file.
file(STRINGS "VERSION" pVersion)

project(g2c VERSION ${pVersion} LANGUAGES Fortran)

include(GNUInstallDirs)

# Build the code in the source directory.
add_subdirectory(src)
