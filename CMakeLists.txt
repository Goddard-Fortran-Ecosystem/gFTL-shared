cmake_minimum_required(VERSION 3.0)
project (pFUnit
  VERSION 3.1.1
  LANGUAGES Fortran)



#if(COMMAND cmake_policy)
#  cmake_policy(SET CMP0003 NEW)
#endif(COMMAND cmake_policy)

set(gFTL "" CACHE PATH "(optional) path to installed gFTL")
set(PFUNIT "" CACHE PATH "(optional) path to installed testing framework")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
include(check_intrinsic_kinds RESULT_VARIABLE found)

if (gFTL)
  set(CMAKE_Fortran_COMPILER ${FC})
  project (FTL Fortran)

#  include(CheckFortranSource)
#  include(CheckCompilerCapabilities)
else ()
  project (FTL NONE)
endif()

if (PFUNIT)
  set(CMAKE_Fortran_COMPILER ${FC})
  project (FTL Fortran)

  set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake_utils")
  include(${CMAKE_Fortran_COMPILER_ID} RESULT_VARIABLE found)
  include(CheckFortranSource)
  include(CheckCompilerCapabilities)
else ()
  project (FTL NONE)
endif()

add_subdirectory(src)

#if(PFUNIT)
#   add_subdirectory(tests)
#endif()
