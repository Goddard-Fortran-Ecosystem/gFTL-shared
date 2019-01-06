module gFTL_StringReal64MapMod
  use, intrinsic:: iso_fortran_env, only: REAL64

#include "types/key_DeferredLengthString.inc"
#define _value type(real(kind=REAL64))
#define _map StringReal64Map
#define _iterator StringReal64MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringReal64MapMod
