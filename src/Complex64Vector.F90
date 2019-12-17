module gFTL_Complex64Vector
  use, intrinsic :: iso_fortran_env, only: REAL64

#define _type complex(kind=REAL64)
#define _vector Complex64Vector
#define _vectoriterator Complex64VectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type
  
end module gFTL_Complex64Vector
