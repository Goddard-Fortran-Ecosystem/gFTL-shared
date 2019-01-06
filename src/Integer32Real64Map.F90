module gFTL_Integer32Real64MapMod
  use, intrinsic:: iso_fortran_env, only: INT32, REAL64

#define _key type(integer(kind=INT32))
#define _value type(real(kind=REAL64))
#define _map Integer32Real64Map
#define _iterator Integer32Real64MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer32Real64MapMod
