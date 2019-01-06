module gFTL_Integer64Complex64MapMod
  use, intrinsic:: iso_fortran_env, only: INT64, REAL64

#define _key type(integer(kind=INT64))
#define _value type(complex(kind=REAL64))
#define _map Integer64Complex64Map
#define _iterator Integer64Complex64MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64Complex64MapMod
