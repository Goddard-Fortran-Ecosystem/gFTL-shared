module gFTL_StringComplex32Map
  use, intrinsic:: iso_fortran_env, only: REAL32

#include "types/key_deferredLengthString.inc"
#define _value complex(kind=REAL32)
#define _map StringComplex32Map
#define _iterator StringComplex32MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringComplex32Map
