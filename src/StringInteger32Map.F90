module gFTL_StringInteger32Map
  use, intrinsic:: iso_fortran_env, only: INT32

#include "types/key_deferredLengthString.inc"
#define _value integer(kind=INT32)
#define _map StringInteger32Map
#define _iterator StringInteger32MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringInteger32Map
