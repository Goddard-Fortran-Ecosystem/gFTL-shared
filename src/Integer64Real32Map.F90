module gFTL_Integer64Real32Map
  use, intrinsic:: iso_fortran_env, only: INT64, REAL32

#define _key type(integer(kind=INT64))
#define _value type(real(kind=REAL32))
#define _map Integer64Real32Map
#define _iterator Integer64Real32MapIterator
#define _pair Integer64Real32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64Real32Map
