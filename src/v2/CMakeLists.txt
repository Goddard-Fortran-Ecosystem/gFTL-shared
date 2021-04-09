set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod)
add_library(gftl-shared-v2)

# For internal builds
add_library(GFTL_SHARED::gftl-shared-v2 ALIAS gftl-shared-v2)

set (T_types_ordered
  Integer32 Integer64 Integer
  Real32 Real64 Real Double
  String
  )
if (_ISO_REAL128)
  list (APPEND T_types_ordered Real128)
endif()

set (T_types
  ${T_types_ordered}
  Complex32 Complex64 Complex DoubleComplex
  Logical
  Unlimited
)

if (_ISO_REAL128)
  list (APPEND T_types Complex128)
endif()

set (Key_types
  Integer32 Integer64 Integer
  String)

foreach (T ${T_types})

  foreach (Container Vector)
    string(TOLOWER ${Container} container)
    configure_file(vector-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE vector/${T}${Container}.F90)
  endforeach ()
  
  foreach (Container Queue Stack Deque)
    string(TOLOWER ${Container} container)
    configure_file(queue-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE ${container}/${T}${Container}.F90)
  endforeach ()
endforeach ()

foreach (T ${T_types_ordered})
  foreach (Container Set)
    string(TOLOWER ${Container} container)
    configure_file(queue-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE ${container}/${T}${Container}.F90)
  endforeach ()
endforeach()

#foreach (Key ${key_types})
#  foreach (T ${T_types})
#    foreach (container Map OrderedMap)
#      configure_file(map-like/${Key}${T}Generic.F90.in  ${container}/${Key}${T}${container}.F90 @ONLY)
#      target_sources (gftl-shared-v2 PRIVATE ${container}/${Key}${T}${container}.F90)
#    endforeach ()
#  endforeach ()
#endforeach ()


if (_ISO_INT32 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v2 PRIVATE _INT_DEFAULT_KIND_IS_INT32)
endif ()

if (_ISO_INT64 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v2 PRIVATE _INT_DEFAULT_KIND_IS_INT64)
endif ()

if (_ISO_REAL32 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v2 PRIVATE _REAL_DEFAULT_KIND_IS_REAL32)
endif ()

if (_ISO_REAL64 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v2 PRIVATE _REAL_DEFAULT_KIND_IS_REAL64)
endif ()
      
if (_ISO_REAL64 EQUAL _DOUBLE_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v2 PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL64)
endif ()

if (_ISO_REAL128)
  if (_ISO_REAL128 EQUAL _DOUBLE_DEFAULT_KIND)
    target_compile_definitions(gftl-shared-v2 PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL128)
  endif ()
endif()

set (dest "GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR}")

target_include_directories (gftl-shared-v2 PUBLIC
  $<BUILD_INTERFACE:${GFTL_SHARED_BINARY_DIR}/mod/v2>
  $<INSTALL_INTERFACE:${dest}/include/v2>
  )

target_link_libraries (gftl-shared-v2 PUBLIC GFTL::gftl-v2)

#add_executable (demo.x demo.F90)
#target_link_libraries (demo.x gftl-shared-v2)

install (DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod/ DESTINATION ${dest}/include/v2)
install (TARGETS gftl-shared-v2 EXPORT GFTL_SHARED DESTINATION "${dest}/lib")
