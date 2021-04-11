module gFTL1_Complex32Vector
  use, intrinsic :: iso_fortran_env, only: REAL32

#define _type type(complex(kind=REAL32))
#define _vector Complex32Vector
#define _vectoriterator Complex32VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL1_Complex32Vector

module gFTL_Complex32Vector
   use gFTL1_Complex32Vector
end module gFTL_Complex32Vector
