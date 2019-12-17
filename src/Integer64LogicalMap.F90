module gFTL_Integer64LogicalMap
  use, intrinsic:: iso_fortran_env, only: INT64

#define _key integer(kind=INT64)
#define _value logical
#define _map Integer64LogicalMap
#define _iterator Integer64LogicalMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64LogicalMap
