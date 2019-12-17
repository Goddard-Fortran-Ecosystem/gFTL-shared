module gFTL_Real32Vector
  use, intrinsic :: iso_fortran_env, only: REAL32

#define _type real(kind=REAL32)
#define _vector Real32Vector
#define _vectoriterator Real32VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Real32Vector
