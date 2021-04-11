module gFTL1_Complex128Vector
  use, intrinsic :: iso_fortran_env, only: REAL128

#define _type type(complex(kind=REAL128))
#define _vector Complex128Vector
#define _vectoriterator Complex128VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL1_Complex128Vector

module gFTL_Complex128Vector
   use gFTL1_Complex128Vector
end module gFTL_Complex128Vector
