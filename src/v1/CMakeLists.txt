set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod)
add_library(gftl-shared-v1)
add_library(gftl-shared INTERFACE)
target_link_libraries(gftl-shared INTERFACE gftl-shared-v1)

# For internal builds
add_library(GFTL_SHARED::gftl-shared-v1 ALIAS gftl-shared-v1)
add_library(GFTL_SHARED::gftl-shared ALIAS gftl-shared)

set (T_types_ordered
  Integer
  Integer32 Integer64 Integer
  Real32 Real64 Real Double
  String
)
set (T_types
  ${T_types_ordered}
  Complex32 Complex64 Complex DoubleComplex
  Logical
  Unlimited)

set (Key_types
  Integer32 Integer64 Integer
  String)

if (_ISO_REAL128)
  list (APPEND T_types Real128 Complex128)
endif()


foreach (T ${T_types})
  target_sources (gftl-shared-v1 PRIVATE ${T}Vector.F90)
endforeach()

foreach (Key ${Key_types})
  foreach (T ${T_types})
    target_sources (gftl-shared-v1 PRIVATE ${Key}${T}Map.F90)
  endforeach()
endforeach()    



if (_ISO_INT32 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v1 PRIVATE _INT_DEFAULT_KIND_IS_INT32)
endif ()

if (_ISO_INT64 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v1 PRIVATE _INT_DEFAULT_KIND_IS_INT64)
endif ()

if (_ISO_REAL32 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v1 PRIVATE _REAL_DEFAULT_KIND_IS_REAL32)
endif ()

if (_ISO_REAL64 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v1 PRIVATE _REAL_DEFAULT_KIND_IS_REAL64)
endif ()
      
if (_ISO_REAL64 EQUAL _DOUBLE_DEFAULT_KIND)
  target_compile_definitions(gftl-shared-v1 PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL64)
endif ()

if (_ISO_REAL128)
  if (_ISO_REAL128 EQUAL _DOUBLE_DEFAULT_KIND)
    target_compile_definitions(gftl-shared-v1 PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL128)
  endif ()
endif()

set (dest "GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR}")

target_include_directories (gftl-shared-v1 PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/mod>
  $<INSTALL_INTERFACE:${dest}/include/v1>
  )

if (GFTL::gftl-v1)
  target_link_libraries (gftl-shared-v1 PUBLIC GFTL::gftl-v1)
else()
  target_link_libraries (gftl-shared-v1 PUBLIC GFTL::gftl)
endif()

add_executable (demo.x demo.F90)
target_link_libraries (demo.x gftl-shared-v1)

install (DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/mod/ DESTINATION ${dest}/include/v1)
install (TARGETS gftl-shared-v1 gftl-shared EXPORT GFTL_SHARED DESTINATION "${dest}/lib")
