add_library(gFTL-stock
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
  )

if(_ISO_REAL128)
  target_sources(gFTL-stock PUBLIC Real128Vector.F90)
endif()
      
	

target_include_directories(gFTL-stock PRIVATE ${gFTL}/include)
