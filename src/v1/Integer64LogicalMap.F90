module gFTL1_Integer64LogicalMap
  use, intrinsic:: iso_fortran_env, only: INT64

#define _key type(integer(kind=INT64))
#define _value type(logical)
#define _map Integer64LogicalMap
#define _iterator Integer64LogicalMapIterator
#define _pair Integer64LogicalPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer64LogicalMap

module gFTL_Integer64LogicalMap
   use gFTL1_Integer64LogicalMap
end module gFTL_Integer64LogicalMap
