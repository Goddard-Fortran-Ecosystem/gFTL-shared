module gFTL1_IntegerVector

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL1_Integer32Vector, IntegerVector => Integer32Vector, &
       & IntegerVectorIterator => Integer32VectorIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL1_Integer64Vector, IntegerVector => Integer64Vector, &
       & IntegerVectorIterator => Integer64VectorIterator


#else

#  define _type type(integer)
#  define _vector IntegerVector
#  define _vectoriterator IntegerVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif

end module gFTL1_IntegerVector

module gFTL_IntegerVector
   use gFTL1_IntegerVector
end module gFTL_IntegerVector
