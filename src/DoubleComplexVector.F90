module gFTL_DoubleComplexVectorMod

#if _DOUBLE_DEAULT_KIND == _ISO_REAL64

  use gFTL_DoubleComplex64VectorMod, only: DoubleComplexVector => Complex64Vector
  use gFTL_DoubleComplex64VectorMod, only: DoubleComplexVectorIterator => Complex64VectorIterator

#elif defined(_ISO_REAL128) && (_DOUBLE_DEAULT_KIND == _ISO_REAL128)

  use gFTL_DoubleComplex64VectorMod, only: DoubleComplexVector => ComplexVector
  use gFTL_DoubleComplex64VectorMod, only: DoubleComplexVectorIterator => Complex128VectorIterator

#else

#  define _type type(double complex)
#  define _vector DoubleComplexVector
#  define _vectoriterator DoubleComplexVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL_DoubleComplexVectorMod
