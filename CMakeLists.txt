cmake_minimum_required(VERSION 3.0)

# Most users of this software do not (should not?) have permissions to
# install in the cmake default of /usr/local (or equiv on other os's).
# Below, the default is changed to a directory within the build tree
# unless the user explicitly sets CMAKE_INSTALL_PREFIX in the cache.

project (gFTL-shared
  VERSION 1.0.0
  LANGUAGES Fortran)

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set (CMAKE_INSTALL_PREFIX "${CMAKE_BINARY_DIR}/installed" CACHE PATH "default install path" FORCE )
endif()


if (POLICY CMP0076)
  cmake_policy(SET CMP0076 NEW)
endif()

find_package(gFTL QUIET)
if (NOT gFTL_FOUND)
  # from https://cliutils.gitlab.io/modern-cmake/chapters/projects/submodule.html
  find_package(Git QUIET)
  if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
    option(GIT_SUBMODULE "Check submodules during build" ON)
    if(GIT_SUBMODULE)
      message(STATUS "Submodule update")
      execute_process(
	COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
	RESULT_VARIABLE GIT_SUBMODULE_RESULT
	)
      if (NOT GIT_SUBMODULE_RESULT EQUAL "0")
	message(FATAL_ERROR "git submodule update --init failed with ${GIT_SUBMODULE_RESULT}, please checkout submodules")
      endif()
    endif()
  endif()

  message("add_subdirectory")
  add_subdirectory(extern/gFTL)

endif()

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
include(check_intrinsic_kinds RESULT_VARIABLE found)

add_subdirectory(src)

#include(CMakeInstallation)
