
macro (CHECK_Fortran_SOURCE_RUN file var)

  # Wrapper to check_fortran_source_runs to add a compiler definition on success
  # See https://cmake.org/cmake/help/latest/module/CheckFortranSourceRuns.html

  include(CheckFortranSourceRuns)

  file(READ ${file} source)  
  # message(${source})

  check_fortran_source_runs(
    ${source}
    # "character :: b; b = 'a'; end"
    ${var}
    SRC_EXT F90
  )

  # Note the double brackets, ${ ${ } }, below. This evaluates the contents
  # of the variable. A single bracket also works in an if-statement, but
  # to print the contents use `message(${${var}})`.
  if (${${var}})
    add_definitions(-D${var})
  endif ()

endmacro ()


macro (CHECK_Fortran_SOURCE_COMPILE file var)
  include(CheckFortranSourceCompiles)

  # Wrapper to check_fortran_source_compiles to add a compiler definition on success
  # See https://cmake.org/cmake/help/latest/module/CheckFortranSourceCompiles.html

  include(CheckFortranSourceCompiles)

  file(READ ${file} source)  

  check_fortran_source_compiles(
    ${source}
    ${var}
    SRC_EXT F90
  )

  # Note the double brackets, ${ ${ } }, below. This evaluates the contents
  # of the variable. A single bracket also works in an if-statement, but
  # to print the contents use `message(${${var}})`.
  if (${${var}})
    add_definitions(-D${var})
  endif ()

endmacro ()
