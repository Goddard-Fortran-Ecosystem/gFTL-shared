module gFTL1_Integer32UnlimitedMap
  use, intrinsic:: iso_fortran_env, only: INT32

#define _key type(integer(kind=INT32))
#include "types/value_unlimitedPoly.inc"
#define _map Integer32UnlimitedMap
#define _iterator Integer32UnlimitedMapIterator
#define _pair Integer32UnlimitedPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32UnlimitedMap

module gFTL_Integer32UnlimitedMap
   use gFTL1_Integer32UnlimitedMap
end module gFTL_Integer32UnlimitedMap
