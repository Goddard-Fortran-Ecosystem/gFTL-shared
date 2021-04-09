module gFTL1_Integer64Vector
  use, intrinsic :: iso_fortran_env, only: INT64

#define _type type(integer(kind=INT64))
#define _vector Integer64Vector
#define _vectoriterator Integer64VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL1_Integer64Vector

module gFTL_Integer64Vector
   use gFTL1_Integer64Vector
end module gFTL_Integer64Vector
