module gFTL_Integer32StringMap
  use, intrinsic:: iso_fortran_env, only: INT32

#define _key type(integer(kind=INT32))
#include "types/value_deferredLengthString.inc"
#define _map Integer32StringMap
#define _iterator Integer32StringMapIterator
#define _pair Integer32StringMapPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32StringMap
