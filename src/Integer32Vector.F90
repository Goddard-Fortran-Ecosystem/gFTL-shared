module gFTL_Integer32Vector
  use, intrinsic :: iso_fortran_env, only: INT32

#define _type type(integer(kind=INT32))
#define _vector Integer32Vector
#define _vectoriterator Integer32VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Integer32Vector
