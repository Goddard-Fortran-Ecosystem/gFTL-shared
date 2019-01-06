module gFTL_StringReal128MapMod
  use, intrinsic:: iso_fortran_env, only: REAL128

#include "types/key_DeferredLengthString.inc"
#define _value type(real(kind=REAL128))
#define _map StringReal128Map
#define _iterator StringReal128MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringReal128MapMod
