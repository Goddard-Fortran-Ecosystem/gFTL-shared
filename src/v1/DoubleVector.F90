module gFTL1_DoubleVector

#if defined(_DOUBLE_DEFAULT_KIND_IS_REAL64)

  use gFTL1_Real64Vector, only: DoubleVector => Real64Vector
  use gFTL1_Real64Vector, only: DoubleVectorIterator => Real64VectorIterator

#elif defined (_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL1_Real128Vector, only: DoubleVector => Real128Vector
  use gFTL1_Real128Vector, only: DoubleVectorIterator => Real128VectorIterator

#else

#  define _type type(double precision)
#  define _vector DoubleVector
#  define _vectoriterator DoubleVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL1_DoubleVector

module gFTL_DoubleVector
   use gFTL1_DoubleVector
end module gFTL_DoubleVector
