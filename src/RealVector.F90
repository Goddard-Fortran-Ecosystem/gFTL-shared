module gFTL_RealVector

#if _REAL_DEFAULT_KIND_IS_REAL32

  use gFTL_Real32Vector, only: RealVector => Real32Vector
  use gFTL_Real32Vector, only: RealVectorIterator => Real32VectorIterator

#elif _REAL_DEFAULT_KIND_IS_REAL64

  use gFTL_Real64Vector, only: RealVector => Real64Vector
  use gFTL_Real64Vector, only: RealVectorIterator => Real64VectorIterator

#else

#  define _type type(real)
#  define _vector RealVector
#  define _vectoriterator RealVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL_RealVector
