cmake_minimum_required(VERSION 3.12)

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
  VERSION 1.10.0
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

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(CMAKE_MODULE_PATH "${GFTL_SHARED_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
include(check_intrinsic_kinds RESULT_VARIABLE found)

# We attempt to use find_package() first for each dependency.  But all
# dependencies are also available as submodules.
include(build_submodule)
build_submodule(extern/gFTL PROJECT GFTL TARGET GFTL::gftl)

add_subdirectory (src)

# The following is needed for external projects using *nix make when
# parent project builds gFTL-shared as a subproject.
set (top_dir GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR})
set (GFTL_SHARED_TOP_DIR "${CMAKE_INSTALL_PREFIX}/${top_dir}" CACHE PATH "")

include(CMakePackageConfigHelpers)
configure_package_config_file(GFTL_SHAREDConfig.cmake.in GFTL_SHAREDConfig.cmake
  INSTALL_DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig.cmake
  )
write_basic_package_version_file(GFTL_SHAREDConfig-version.cmake
  VERSION ${PACKAGE_VERSION}
  COMPATIBILITY SameMajorVersion
  )

install (
  FILES ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig.cmake ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDConfig-version.cmake
  DESTINATION "${top_dir}/cmake")

configure_file (GFTL_SHARED.mk.in ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHARED.mk @ONLY)
install (
  FILES ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHARED.mk ${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHARED.mk
  DESTINATION "${top_dir}/include")

install(EXPORT GFTL_SHARED
  FILE GFTL_SHAREDTargets.cmake
  NAMESPACE GFTL_SHARED::
  DESTINATION "${top_dir}/cmake"
  )
export(EXPORT GFTL_SHARED
  FILE "${CMAKE_CURRENT_BINARY_DIR}/GFTL_SHAREDTargets.cmake"
  NAMESPACE GFTL_SHARED::
  )
