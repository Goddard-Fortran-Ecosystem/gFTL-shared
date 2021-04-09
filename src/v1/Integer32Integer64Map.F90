module gFTL1_Integer32Integer64Map
  use, intrinsic:: iso_fortran_env, only: INT32, INT64

#define _key type(integer(kind=INT32))
#define _value type(integer(kind=INT64))
#define _map Integer32Integer64Map
#define _iterator Integer32Integer64MapIterator
#define _pair Integer32Integer64Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32Integer64Map

module gFTL_Integer32Integer64Map
   use gFTL1_Integer32Integer64Map
end module gFTL_Integer32Integer64Map
