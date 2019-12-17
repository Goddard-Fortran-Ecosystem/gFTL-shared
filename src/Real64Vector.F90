module gFTL_Real64Vector
  use, intrinsic :: iso_fortran_env, only: REAL64

#define _type real(kind=REAL64)
#define _vector Real64Vector
#define _vectoriterator Real64VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Real64Vector
