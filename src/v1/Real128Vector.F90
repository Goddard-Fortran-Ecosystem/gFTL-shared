module gFTL1_Real128Vector
  use, intrinsic :: iso_fortran_env, only: REAL128

#define _type type(real(kind=REAL128))
#define _vector Real128Vector
#define _vectoriterator Real128VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL1_Real128Vector

module gFTL_Real128Vector
   use gFTL1_Real128Vector
end module gFTL_Real128Vector
