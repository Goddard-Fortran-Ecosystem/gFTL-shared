module gFTL_Complex128VectorMod
  use, intrinsic :: iso_fortran_env, only: REAL128

#define _type type(complex(kind=REAL128))
#define _vector Complex128Vector
#define _vectoriterator Complex128VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Complex128VectorMod
