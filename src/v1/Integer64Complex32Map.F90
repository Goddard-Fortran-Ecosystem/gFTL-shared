module gFTL1_Integer64Complex32Map
  use, intrinsic:: iso_fortran_env, only: INT64, REAL32

#define _key type(integer(kind=INT64))
#define _value type(complex(kind=REAL32))
#define _map Integer64Complex32Map
#define _iterator Integer64Complex32MapIterator
#define _pair Integer64Complex32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer64Complex32Map

module gFTL_Integer64Complex32Map
   use gFTL1_Integer64Complex32Map
end module gFTL_Integer64Complex32Map
