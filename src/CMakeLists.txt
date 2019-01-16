set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/mod)

add_library(gFTL-shared
  # Vector containers
  IntegerVector.F90
  Integer32Vector.F90
  Integer64Vector.F90

  RealVector.F90
  DoubleVector.F90
  Real32Vector.F90
  Real64Vector.F90

  ComplexVector.F90
  DoubleComplexVector.F90
  Complex32Vector.F90
  Complex64Vector.F90

  LogicalVector.F90
  StringVector.F90
  UnlimitedVector.F90

  # MapContainers
  StringIntegerMap.F90
  StringInteger32Map.F90
  StringInteger64Map.F90

  StringRealMap.F90
  StringDoubleMap.F90
  StringReal32Map.F90
  StringReal64Map.F90

  StringComplexMap.F90
  StringDoubleComplexMap.F90
  StringComplex32Map.F90
  StringComplex64Map.F90

  StringLogicalMap.F90
  StringStringMap.F90
  StringUnlimitedMap.F90

  Integer32Integer32Map.F90
  Integer32Integer64Map.F90
  Integer32IntegerMap.F90
  Integer32ComplexMap.F90
  Integer32DoubleComplexMap.F90
  Integer32Complex32Map.F90
  Integer32Complex64Map.F90
  Integer32LogicalMap.F90
  Integer32StringMap.F90
  Integer32UnlimitedMap.F90

  Integer64Integer32Map.F90
  Integer64Integer64Map.F90
  Integer64IntegerMap.F90
  Integer64ComplexMap.F90
  Integer64DoubleComplexMap.F90
  Integer64Complex32Map.F90
  Integer64Complex64Map.F90
  Integer64LogicalMap.F90
  Integer64StringMap.F90
  Integer64UnlimitedMap.F90

  IntegerInteger32Map.F90
  IntegerInteger64Map.F90
  IntegerIntegerMap.F90
  Integer32RealMap.F90
  Integer32DoubleMap.F90
  Integer32Real32Map.F90
  Integer32Real64Map.F90
  IntegerLogicalMap.F90
  IntegerStringMap.F90
  IntegerUnlimitedMap.F90
  )

if(_ISO_REAL128)
  target_sources(gFTL-shared PUBLIC Real128Vector.F90)
  target_sources(gFTL-shared PUBLIC Complex128Vector.F90)
  target_sources(gFTL-shared PUBLIC StringReal128Map.F90)
  target_sources(gFTL-shared PUBLIC StringComplex128Map.F90)
  target_sources(gFTL-shared PUBLIC Integer32Real128Map.F90)
  target_sources(gFTL-shared PUBLIC Integer32Complex128Map.F90)
endif()
      
if (NOT GFTL)
  add_dependencies(gFTL-shared gFTL)
endif()
	
target_include_directories(gFTL-shared PRIVATE ${gftl_install_dir}/include)

install (TARGETS gFTL-shared DESTINATION lib)
install (DIRECTORY ${CMAKE_BINARY_DIR}/mod DESTINATION .)

