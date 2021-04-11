module gFTL1_Real32Vector
  use, intrinsic :: iso_fortran_env, only: REAL32

#define _type type(real(kind=REAL32))
#define _vector Real32Vector
#define _vectoriterator Real32VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL1_Real32Vector

module gFTL_Real32Vector
   use gFTL1_Real32Vector
end module gFTL_Real32Vector
