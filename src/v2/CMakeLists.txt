set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod)
set (v2-default gftl-shared-v2-as-default)
add_library(gftl-shared-v2)
add_library(${v2-default})

# For internal builds
add_library(GFTL_SHARED::gftl-shared-v2 ALIAS gftl-shared-v2)
add_library(GFTL_SHARED::gftl-shared-v2-as-default ALIAS ${v2-default})

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
    configure_file(vector-like/${T}Generic_wrap.F90.in ${container}/${T}${Container}_wrap.F90 @ONLY)
    configure_file(vector-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE vector/${T}${Container}.F90)
    target_sources (${v2-default} PRIVATE vector/${T}${Container}_wrap.F90)
  endforeach ()

  foreach (Container Queue Stack)
    string(TOLOWER ${Container} container)
    configure_file(queue-like/${T}Generic_wrap.F90.in ${container}/${T}${Container}_wrap.F90 @ONLY)
    configure_file(queue-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE ${container}/${T}${Container}.F90)
    target_sources (${v2-default} PRIVATE ${container}/${T}${Container}_wrap.F90)
  endforeach ()

  foreach (Container Deque)
    string(TOLOWER ${Container} container)
    configure_file(queue-like/${T}Generic_wrap.F90.in ${container}/${T}${Container}_wrap.F90 @ONLY)
    configure_file(queue-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE ${container}/${T}${Container}.F90)
    target_sources (${v2-default} PRIVATE ${container}/${T}${Container}_wrap.F90)
    set_property(SOURCE ${container}/${T}${Container}.F90  PROPERTY COMPILE_DEFINITIONS HAS_ITERATOR)
  endforeach ()

endforeach ()

target_link_libraries(${v2-default} PUBLIC gftl-shared-v2)

# Only ordered types can be used in set
foreach (T ${T_types_ordered})
  foreach (Container Set)
    string(TOLOWER ${Container} container)
    configure_file(queue-like/${T}Generic_wrap.F90.in  ${container}/${T}${Container}_wrap.F90 @ONLY)
    configure_file(queue-like/${T}Generic.F90.in  ${container}/${T}${Container}.F90 @ONLY)
    target_sources (gftl-shared-v2 PRIVATE ${container}/${T}${Container}.F90)
    target_sources (${v2-default} PRIVATE ${container}/${T}${Container}_wrap.F90)
    set_property(SOURCE ${container}/${T}${Container}.F90  PROPERTY COMPILE_DEFINITIONS HAS_ITERATOR)
  endforeach ()
endforeach()

set(Integer_Type __INTEGER)
set(Integer32_Type __INTEGER32)
set(Integer64_Type __INTEGER64)
set(Real_Type __REAL)
set(Double_Type __DOUBLE_PRECISION)
set(Real32_Type __REAL32)
set(Real64_Type __REAL64)
set(Real128_Type __REAL128)
set(Complex_Type __COMPLEX)
set(DoubleComplex_Type __DOUBLE_COMPLEX)
set(Complex32_Type __COMPLEX32)
set(Complex64_Type __COMPLEX64)
set(Complex128_Type __COMPLEX128)
set(String_Type __CHARACTER_DEFERRED)
set(Logical_Type __LOGICAL)
set(Unlimited_Type __UNLIMITED_POLYMORPHIC)

# Any orderede type can be used in a map, but
# integer and string are the most useful/common.

foreach (Key ${Key_types})
  set (KEY_TYPE ${${Key}_Type})
  foreach (T ${T_types})
    set (T_TYPE ${${T}_Type})
    set (Key_T ${Key}${T})
    foreach (Container Map OrderedMap)
      if (Container STREQUAL "Map")
	set (container "map")
      elseif (Container STREQUAL "OrderedMap")
	set (container "ordered_map")
      endif ()
      configure_file(map-like/Generic.F90.in  ${container}/${Key_T}${Container}.F90 @ONLY)
      configure_file(map-like/GenericWrap.F90.in  ${container}/${Key_T}${Container}_wrap.F90 @ONLY)
      target_sources (gftl-shared-v2 PRIVATE ${container}/${Key_T}${Container}.F90)
      target_sources (${v2-default} PRIVATE ${container}/${Key_T}${Container}_wrap.F90)
    endforeach ()
  endforeach ()
endforeach ()


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
  $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/mod>
  $<INSTALL_INTERFACE:${dest}/include/v2>
  )

target_link_libraries (gftl-shared-v2 PUBLIC GFTL::gftl-v2)

#add_executable (demo.x demo.F90)
#target_link_libraries (demo.x gftl-shared-v2)

install (DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod/ DESTINATION ${dest}/include/v2)
install (TARGETS gftl-shared-v2 EXPORT GFTL_SHARED DESTINATION "${dest}/lib")
