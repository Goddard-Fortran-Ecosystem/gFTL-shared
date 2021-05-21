macro (CHECK_FORTRAN_SOURCE_RUN file var docstr)

  if (DEFINED CACHE{GFTL_SHARED${var}})
    set( ${var} ${GFTL_SHARED${var}})
  else ()
    try_run (
      run compile
      ${CMAKE_CURRENT_BINARY_DIR}
      ${file}
      CMAKE_FLAGS "-DCOMPILE_DEFINITIONS=${CMAKE_REQUIRED_DEFINITIONS}"
      RUN_OUTPUT_VARIABLE ${var}
      )

    # Successful runs return "0", which is opposite of CMake sense of "if":
    if (NOT run)
      string(STRIP ${${var}} ${var})
      if (NOT CMAKE_REQUIRED_QUIET)
        message(STATUS "Performing Test ${var}: SUCCESS (value=${${var}})")
      endif ()
      
      set (GFTL_SHARED${var}
        ${${var}}
        CACHE
        STRING
        ${docstr}
        )
      
    else ()
      
      if (NOT CMAKE_REQUIRED_QUIET)
        message(STATUS "Performing Test ${var}: FAILURE")
      endif ()
    
    endif ()
    
  endif ()
  
  if (NOT ${${var}} EQUAL "")
    add_definitions(-D${var}=${${var}})
  endif ()

endmacro (CHECK_FORTRAN_SOURCE_RUN)


macro (CHECK_FORTRAN_SOURCE_COMPILE file var)

  try_compile (
    code_compiles
    ${CMAKE_CURRENT_BINARY_DIR}
    ${file}
    CMAKE_FLAGS "-DCOMPILE_DEFINITIONS=${CMAKE_REQUIRED_DEFINITIONS}"
    )

  if (${code_compiles})

    set(${var} SUCCESS)
    if (NOT CMAKE_REQUIRED_QUIET)
      message (STATUS "Performing Test ${var}: SUCCESS")
    endif ()

    add_definitions(-D${var})

  else ()

      if (NOT CMAKE_REQUIRED_QUIET)
	message (STATUS "Performing Test ${var}: BUILD FAILURE")
      endif ()

  endif()

endmacro (CHECK_FORTRAN_SOURCE_COMPILE)
