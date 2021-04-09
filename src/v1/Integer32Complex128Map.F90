module gFTL1_Integer32Complex128Map
  use, intrinsic:: iso_fortran_env, only: INT32, REAL128

#define _key type(integer(kind=INT32))
#define _value type(complex(kind=REAL128))
#define _map Integer32Complex128Map
#define _iterator Integer32Complex128MapIterator
#define _pair Integer32Complex128Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32Complex128Map

module gFTL_Integer32Complex128Map
   use gFTL1_Integer32Complex128Map
end module gFTL_Integer32Complex128Map
