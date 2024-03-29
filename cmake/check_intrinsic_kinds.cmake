include (CheckFortranSource)

CHECK_Fortran_SOURCE_RUN (
  ${CMAKE_CURRENT_LIST_DIR}/trial_sources/LOGICAL_DEFAULT_KIND.F90
  _LOGICAL_DEFAULT_KIND
  "Default logical kind"
  )

CHECK_Fortran_SOURCE_RUN (
  ${CMAKE_CURRENT_LIST_DIR}/trial_sources/INT_DEFAULT_KIND.F90
  _INT_DEFAULT_KIND
  "Default integer kind"
  )
foreach (kind 8 16 32 64)
  set(CMAKE_REQUIRED_FLAGS = -fpp)
  set(CMAKE_REQUIRED_DEFINITIONS -D_KIND=INT${kind})

  CHECK_Fortran_SOURCE_RUN (
    ${CMAKE_CURRENT_LIST_DIR}/trial_sources/INT_KIND.F90
    _ISO_INT${kind}
    "Integer(${kind}) kind"
    )

endforeach()

CHECK_Fortran_SOURCE_RUN (
  ${CMAKE_CURRENT_LIST_DIR}/trial_sources/REAL_DEFAULT_KIND.F90
  _REAL_DEFAULT_KIND
  "Default real kind"
  )

CHECK_Fortran_SOURCE_RUN (
  ${CMAKE_CURRENT_LIST_DIR}/trial_sources/DOUBLE_DEFAULT_KIND.F90
  _DOUBLE_DEFAULT_KIND
  "Default double kind"
  )

foreach (kind 32 64 128)

  if (NOT DEFINED CACHE{GFTL_SHARED_ISO_REAL${kind}})
  
    set(CMAKE_REQUIRED_FLAGS = -fpp)
    set(CMAKE_REQUIRED_DEFINITIONS -D_KIND=REAL${kind})

    try_compile (
      code_compiles
      ${GFTL_SHARED_BINARY_DIR}
      ${CMAKE_CURRENT_LIST_DIR}/trial_sources/REAL_KIND.F90
      CMAKE_FLAGS "-DCOMPILE_DEFINITIONS=${CMAKE_REQUIRED_DEFINITIONS}")
    
    if (code_compiles)
      CHECK_Fortran_SOURCE_RUN (
        ${CMAKE_CURRENT_LIST_DIR}/trial_sources/REAL_KIND.F90
        _ISO_REAL${kind}
        "Real(${kind}) kind"
        )
    endif ()
    
    try_compile (
      code_compiles
      ${GFTL_SHARED_BINARY_DIR}
      ${CMAKE_CURRENT_LIST_DIR}/trial_sources/REAL_KIND.F90
      CMAKE_FLAGS "-DCOMPILE_DEFINITIONS=${CMAKE_REQUIRED_DEFINITIONS}")
    
  endif ()
  
endforeach()



