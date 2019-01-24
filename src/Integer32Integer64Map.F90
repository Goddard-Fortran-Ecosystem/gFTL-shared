module gFTL_Integer32Integer64Map
  use, intrinsic:: iso_fortran_env, only: INT32, INT64

#define _key type(integer(kind=INT32))
#define _value type(integer(kind=INT64))
#define _map Integer32Integer64Map
#define _iterator Integer32Integer64MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32Integer64Map
