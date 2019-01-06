module gFTL_Integer64UnlimitedMapMod
  use, intrinsic:: iso_fortran_env, only: INT64

#define _key type(integer(kind=INT64))
#include "types/value_unlimitedPoly.inc"
#define _map Integer64UnlimitedMap
#define _iterator Integer64UnlimitedMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64UnlimitedMapMod
