set(CMAKE_Fortran_MODULE_DIRECTORY ${GFTL_SHARED_BINARY_DIR}/mod)

add_library(gftl-shared
  # Vector containers
  Integer32Vector.F90
  Integer64Vector.F90
  IntegerVector.F90

  Real32Vector.F90
  Real64Vector.F90
  RealVector.F90
  DoubleVector.F90

  Complex32Vector.F90
  Complex64Vector.F90
  ComplexVector.F90
  DoubleComplexVector.F90

  LogicalVector.F90
  StringVector.F90
  UnlimitedVector.F90

  # MapContainers
  StringInteger32Map.F90
  StringInteger64Map.F90
  StringIntegerMap.F90

  StringReal32Map.F90
  StringReal64Map.F90
  StringRealMap.F90
  StringDoubleMap.F90

  StringComplex32Map.F90
  StringComplex64Map.F90
  StringComplexMap.F90
  StringDoubleComplexMap.F90

  StringLogicalMap.F90
  StringStringMap.F90
  StringUnlimitedMap.F90





  Integer32Integer32Map.F90
  Integer32Integer64Map.F90
  Integer32IntegerMap.F90

  Integer32Real32Map.F90
  Integer32Real64Map.F90
  Integer32RealMap.F90
  Integer32DoubleMap.F90

  Integer32Complex32Map.F90
  Integer32Complex64Map.F90
  Integer32ComplexMap.F90
  Integer32DoubleComplexMap.F90

  Integer32LogicalMap.F90
  Integer32StringMap.F90
  Integer32UnlimitedMap.F90


  Integer64Integer32Map.F90
  Integer64Integer64Map.F90
  Integer64IntegerMap.F90

  Integer64Real32Map.F90
  Integer64Real64Map.F90
  Integer64RealMap.F90
  Integer64DoubleMap.F90

  Integer64Complex32Map.F90
  Integer64Complex64Map.F90
  Integer64ComplexMap.F90
  Integer64DoubleComplexMap.F90

  Integer64LogicalMap.F90
  Integer64StringMap.F90
  Integer64UnlimitedMap.F90



  IntegerInteger32Map.F90
  IntegerInteger64Map.F90
  IntegerIntegerMap.F90

  IntegerReal32Map.F90
  IntegerReal64Map.F90
  IntegerRealMap.F90
  IntegerDoubleMap.F90

  IntegerComplex32Map.F90
  IntegerComplex64Map.F90
  IntegerComplexMap.F90
  IntegerDoubleComplexMap.F90

  IntegerLogicalMap.F90
  IntegerStringMap.F90
  IntegerUnlimitedMap.F90


  
  )

if(_ISO_REAL128)
  target_sources(gftl-shared PRIVATE Real128Vector.F90)
  target_sources(gftl-shared PRIVATE Complex128Vector.F90)
  target_sources(gftl-shared PRIVATE StringReal128Map.F90)
  target_sources(gftl-shared PRIVATE StringComplex128Map.F90)
  target_sources(gftl-shared PRIVATE Integer32Real128Map.F90)
  target_sources(gftl-shared PRIVATE Integer32Complex128Map.F90)
  target_sources(gftl-shared PRIVATE Integer64Real128Map.F90)
  target_sources(gftl-shared PRIVATE Integer64Complex128Map.F90)
  target_sources(gftl-shared PRIVATE IntegerReal128Map.F90)
  target_sources(gftl-shared PRIVATE IntegerComplex128Map.F90)
endif()

if (_ISO_INT32 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared PRIVATE _INT_DEFAULT_KIND_IS_INT32)
endif ()

if (_ISO_INT64 EQUAL _INT_DEFAULT_KIND)
  target_compile_definitions(gftl-shared PRIVATE _INT_DEFAULT_KIND_IS_INT64)
endif ()

if (_ISO_REAL32 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared PRIVATE _REAL_DEFAULT_KIND_IS_REAL32)
endif ()

if (_ISO_REAL64 EQUAL _REAL_DEFAULT_KIND)
  target_compile_definitions(gftl-shared PRIVATE _REAL_DEFAULT_KIND_IS_REAL64)
endif ()
      
if (_ISO_REAL64 EQUAL _DOUBLE_DEFAULT_KIND)
  target_compile_definitions(gftl-shared PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL64)
endif ()

if (_ISO_REAL128)
  if (_ISO_REAL128 EQUAL _DOUBLE_DEFAULT_KIND)
    target_compile_definitions(gftl-shared PRIVATE _DOUBLE_DEFAULT_KIND_IS_REAL128)
  endif ()
endif()

set (dest "GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR}")

target_include_directories (gftl-shared PUBLIC
  $<BUILD_INTERFACE:${GFTL_SHARED_BINARY_DIR}/mod>
  $<INSTALL_INTERFACE:${dest}/include>
  )

target_link_libraries (gftl-shared extern-gftl-shared)

add_executable (demo.x demo.F90)
target_link_libraries (demo.x gftl-shared)

install (DIRECTORY ${GFTL_SHARED_BINARY_DIR}/mod/ DESTINATION ${dest}/include)
install (TARGETS gftl-shared EXPORT GFTL_SHARED DESTINATION "${dest}/lib")
install (EXPORT GFTL_SHARED DESTINATION "${dest}/cmake")


