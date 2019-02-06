module gFTL_Integer64Complex128Map
  use, intrinsic:: iso_fortran_env, only: INT64, REAL128

#define _key type(integer(kind=INT64))
#define _value type(complex(kind=REAL128))
#define _map Integer64Complex128Map
#define _iterator Integer64Complex128MapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64Complex128Map
