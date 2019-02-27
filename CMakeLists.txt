cmake_minimum_required(VERSION 3.0)

# Note: the CMake project name is spelled slightly different than the
# git project.  This is to allow superprojects to use an environment
# variable to find gFTL-shared with find_package().  Env variables
# cannot have hyphens, whereas both git and cmake do allow hyphens in
# names.  Unfortunately, I learned the intricacies of find_package() a
# bit late in the game, and am trying to avoid relocating the git repo.
#
# Names/paths that are derived from the CMake project will all have
# "GFTL_SHARED" as their base name (and all caps).  Targets such as
# the library gftl-shared retain the hyphen (and lower case)
project (GFTL_SHARED
  VERSION 1.0.0
  LANGUAGES Fortran)


# Most users of this software do not (should not?) have permissions to
# install in the cmake default of /usr/local (or equiv on other os's).
# Below, the default is changed to a directory within the build tree
# unless the user explicitly sets CMAKE_INSTALL_PREFIX in the cache.
if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set (CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/installed" CACHE PATH "default install path" FORCE )
endif()


if (POLICY CMP0076)
  cmake_policy(SET CMP0076 NEW)
endif()


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${GFTL_SHARED_SOURCE_DIR}/cmake")
include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
include(check_intrinsic_kinds RESULT_VARIABLE found)

add_subdirectory(extern)
add_subdirectory(src)

configure_file(GFTL_SHAREDConfig-version.cmake.in ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig-version.cmake @ONLY)
configure_file(GFTL_SHAREDConfig.cmake.in ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig.cmake @ONLY)
install (
  FILES ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig.cmake ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig-version.cmake
  DESTINATION "GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR}/cmake")

