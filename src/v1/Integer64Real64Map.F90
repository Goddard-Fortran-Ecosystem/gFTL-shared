module gFTL1_Integer64Real64Map
  use, intrinsic:: iso_fortran_env, only: INT64, REAL64

#define _key type(integer(kind=INT64))
#define _value type(real(kind=REAL64))
#define _map Integer64Real64Map
#define _iterator Integer64Real64MapIterator
#define _pair Integer64Real64Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer64Real64Map

module gFTL_Integer64Real64Map
   use gFTL1_Integer64Real64Map
end module gFTL_Integer64Real64Map
