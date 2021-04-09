module gFTL1_DoubleComplexVector

#if defined(_DOUBLE_DEFAULT_KIND_IS_REAL64)

  use gFTL1_Complex64Vector, only: DoubleComplexVector => Complex64Vector
  use gFTL1_Complex64Vector, only: DoubleComplexVectorIterator => Complex64VectorIterator

#elif defined(_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL1_Complex64Vector, only: DoubleComplexVector => Complex128Vector
  use gFTL1_Complex64Vector, only: DoubleComplexVectorIterator => Complex128VectorIterator

#else

#  define _type type(complex(kind=kind(0.d0)))
#  define _vector DoubleComplexVector
#  define _vectoriterator DoubleComplexVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL1_DoubleComplexVector

module gFTL_DoubleComplexVector
   use gFTL1_DoubleComplexVector
end module gFTL_DoubleComplexVector
