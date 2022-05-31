if (CMAKE_Fortran_COMPILER_VERSION VERSION_LESS 6.0)
  message(FATAL_ERROR "${CMAKE_Fortran_COMPILER_ID} version must be at least 6.0!")
endif()
set (DISABLE_FIELD_WIDTH_WARNING)
set (CRAY_POINTER "")
set (EXTENDED_SOURCE "-132")

set (check_kinds "-kind=unique")
set (CMAKE_Fortran_FLAGS_DEBUG "-O0 -g -C=all -Wp,-P") # -C=undefined")
#set (CMAKE_Fortran_FLAGS_DEBUG "-O0 -g -C=all") # -C=undefined")
set (CMAKE_Fortran_FLAGS_RELEASE "-O3 -g -Wp,-P")

