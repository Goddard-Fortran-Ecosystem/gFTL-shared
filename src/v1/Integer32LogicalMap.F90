module gFTL1_Integer32LogicalMap
  use, intrinsic:: iso_fortran_env, only: INT32

#define _key type(integer(kind=INT32))
#define _value type(logical)
#define _map Integer32LogicalMap
#define _iterator Integer32LogicalMapIterator
#define _pair Integer32LogicalPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32LogicalMap

module gFTL_Integer32LogicalMap
   use gFTL1_Integer32LogicalMap
end module gFTL_Integer32LogicalMap
