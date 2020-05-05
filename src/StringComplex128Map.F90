module gFTL_StringComplex128Map
  use, intrinsic:: iso_fortran_env, only: REAL128

#include "types/key_deferredLengthString.inc"
#define _value type(complex(kind=REAL128))
#define _map StringComplex128Map
#define _iterator StringComplex128MapIterator
#define _pair StringComplex128Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringComplex128Map
