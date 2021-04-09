module gFTL1_Integer32Real128Map
  use, intrinsic:: iso_fortran_env, only: INT32, REAL128

#define _key type(integer(kind=INT32))
#define _value type(real(kind=REAL128))
#define _map Integer32Real128Map
#define _iterator Integer32Real128MapIterator
#define _pair Integer32Real128Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32Real128Map

module gFTL_Integer32Real128Map
   use gFTL1_Integer32Real128Map
end module gFTL_Integer32Real128Map
