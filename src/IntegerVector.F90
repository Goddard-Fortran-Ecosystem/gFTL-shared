module gFTL_IntegerVectorMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32VectorMod, only: IntegerVector => Integer32Vector
  use gFTL_Integer32VectorMod, only: IntegerVectorIterator => Integer32VectorIterator

#elif _INT_DEAULT_KIND == _ISO_INT64
  use gFTL_Integer64VectorMod, only: IntegerVector => Integer64Vector
  use gFTL_Integer64VectorMod, only: IntegerVectorIterator => Integer64VectorIterator

#else

#  define _type type(integer)
#  define _vector IntegerVector
#  define _vectoriterator IntegerVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif

end module gFTL_IntegerVectorMod
