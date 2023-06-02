# THis is the main CMake file for the sample project.
#
# Ed Hartnett, 6/2/23
cmake_minimum_required(VERSION 3.15)

# Read the VERSION file.
file(STRINGS "VERSION" pVersion)

project(g2c VERSION ${pVersion} LANGUAGES Fortran)

include(GNUInstallDirs)

# Handle user options.
option(ENABLE_DOCS "Enable generation of doxygen-based documentation." OFF)

# Build the code in the source directory.
add_subdirectory(src)

# Determine whether or not to generate documentation.
if(ENABLE_DOCS)
  find_package(Doxygen REQUIRED)
  add_subdirectory(docs)
endif()

# Run unit tests.
include(CTest)
add_subdirectory(tests)


