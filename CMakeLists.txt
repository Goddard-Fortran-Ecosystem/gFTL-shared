cmake_minimum_required(VERSION 3.0)
project (gFTL-shared
  VERSION 1.0.0
  LANGUAGES Fortran)

if (POLICY CMP0076)
  cmake_policy(SET CMP0076 NEW)
endif()

set(gFTL "" CACHE PATH "Optional path to externally installed FTL package.")

if (gFTL) # use default
  set(gFTL_INCLUDE_DIRS ${gFTL}/include)
else()
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
  if(NOT EXISTS "${PROJECT_SOURCE_DIR}/extern/gFTL/CMakeLists.txt")
    message(FATAL_ERROR  "The submodules were not downloaded! GIT_SUBMODULE was turned off or failed. Please update submodules and try again.")
  endif()
  add_subdirectory(extern/gFTL)
  set(gFTL_INCLUDE_DIRS ${CMAKE_BINARY_DIR}/extern/gFTL/include ${CMAKE_SOURCE_DIR}/extern/gFTL/include)
endif()

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
include(check_intrinsic_kinds RESULT_VARIABLE found)

add_subdirectory(src)

