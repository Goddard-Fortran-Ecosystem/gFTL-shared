module gFTL_Integer32LogicalMap
  use, intrinsic:: iso_fortran_env, only: INT32

#define _key type(integer(kind=INT32))
#define _value type(logical)
#define _map Integer32LogicalMap
#define _iterator Integer32LogicalMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32LogicalMap
