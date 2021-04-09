module gFTL1_RealVector

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL1_Real32Vector, only: RealVector => Real32Vector
  use gFTL1_Real32Vector, only: RealVectorIterator => Real32VectorIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL1_Real64Vector, only: RealVector => Real64Vector
  use gFTL1_Real64Vector, only: RealVectorIterator => Real64VectorIterator

#else

#  define _type type(real)
#  define _vector RealVector
#  define _vectoriterator RealVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL1_RealVector

module gFTL_RealVector
   use gFTL1_RealVector
end module gFTL_RealVector
