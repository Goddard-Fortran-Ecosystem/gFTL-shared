module gFTL_Integer64Real128Map
  use, intrinsic:: iso_fortran_env, only: INT64, REAL128

#define _key type(integer(kind=INT64))
#define _value type(real(kind=REAL128))
#define _map Integer64Real128Map
#define _iterator Integer64Real128MapIterator
#define _pair Integer64Real128MapPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64Real128Map
