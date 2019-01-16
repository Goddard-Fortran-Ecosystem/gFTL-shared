module gFTL_StringInteger64MapMod
  use, intrinsic:: iso_fortran_env, only: INT64

#include "types/key_deferredLengthString.inc"
#define _value type(integer(kind=INT64))
#define _map StringInteger64Map
#define _iterator StringInteger64MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringInteger64MapMod
