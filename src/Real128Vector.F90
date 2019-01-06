module gFTL_Real128VectorMod
  use, intrinsic :: iso_fortran_env, only: REAL128

#define _type type(real(kind=REAL128))
#define _vector Real128Vector
#define _vectoriterator Real128VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Real128VectorMod
