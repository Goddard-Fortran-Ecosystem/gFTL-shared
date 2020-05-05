module gFTL_Integer32Integer32Map
  use, intrinsic:: iso_fortran_env, only: INT32

#define _key type(integer(kind=INT32))
#define _value type(integer(kind=INT32))
#define _map Integer32Integer32Map
#define _iterator Integer32Integer32MapIterator
#define _pair Integer32Integer32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32Integer32Map
