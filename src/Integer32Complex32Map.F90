module gFTL_Integer32Complex32Map
  use, intrinsic:: iso_fortran_env, only: INT32, REAL32

#define _key type(integer(kind=INT32))
#define _value type(complex(kind=REAL32))
#define _map Integer32Complex32Map
#define _iterator Integer32Complex32MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32Complex32Map
