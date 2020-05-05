module gFTL_Integer32Real32Map
  use, intrinsic:: iso_fortran_env, only: INT32, REAL32

#define _key type(integer(kind=INT32))
#define _value type(real(kind=REAL32))
#define _map Integer32Real32Map
#define _iterator Integer32Real32MapIterator
#define _pair Integer32Real32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32Real32Map
