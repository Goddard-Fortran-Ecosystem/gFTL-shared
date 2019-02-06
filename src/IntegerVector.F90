module gFTL_IntegerVector

#if _INT_DEFAULT_KIND_IS_INT32

  use gFTL_Integer32Vector, only: IntegerVector => Integer32Vector
  use gFTL_Integer32Vector, only: IntegerVectorIterator => Integer32VectorIterator

#elif _INT_DEFAULT_KIND_IS_INT64
  use gFTL_Integer64Vector, only: IntegerVector => Integer64Vector
  use gFTL_Integer64Vector, only: IntegerVectorIterator => Integer64VectorIterator

#else

#  define _type type(integer)
#  define _vector IntegerVector
#  define _vectoriterator IntegerVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif

end module gFTL_IntegerVector
