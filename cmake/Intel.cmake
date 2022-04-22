# Compiler specific flags for Intel Fortran compiler

if(WIN32)
  set(no_optimize "-Od")
  set(check_all "-check:all")
  set(cpp "-fpp")
  set(save-temps "-Qsave-temps")
  set(disable_warning_for_long_names "-Qdiag-disable:5462")
else()
  set(no_optimize "-O0")
  set(check_all "-check all")
  set(cpp "-cpp")
  set(save-temps "-save-temps")
  set(disable_warning_for_long_names "-diag-disable 5462")
endif()
  
set(traceback "-traceback")

set(CMAKE_Fortran_Flags_ALL "${cpp} ${disable_warning_for_long_names}")
set(CMAKE_Fortran_FLAGS_DEBUG  "${no_optimize} ${check_all} ${save-temps} ${CMAKE_Fortran_Flags_ALL}")
set(CMAKE_Fortran_FLAGS_RELEASE "-O3 ${CMAKE_Fortran_Flags_ALL}")

add_definitions(-D_INTEL)
add_definitions(-D__ifort_18)
