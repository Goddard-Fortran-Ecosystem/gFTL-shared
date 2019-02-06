module gFTL_DoubleVector

#if _DOUBLE_DEFAULT_KIND_IS_REAL64

  use gFTL_Real64Vector, only: DoubleVector => Real64Vector
  use gFTL_Real64Vector, only: DoubleVectorIterator => Real64VectorIterator

#elif defined(_ISO_REAL128) && (_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL_Real128Vector, only: DoubleVector => Real128Vector
  use gFTL_Real128Vector, only: DoubleVectorIterator => Real128VectorIterator

#else

#  define _type type(double precision)
#  define _vector DoubleVector
#  define _vectoriterator DoubleVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL_DoubleVector
