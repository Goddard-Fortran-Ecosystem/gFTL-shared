module gFTL_Integer64Integer64Map
  use, intrinsic:: iso_fortran_env, only: INT64

#define _key type(integer(kind=INT64))
#define _value type(integer(kind=INT64))
#define _map Integer64Integer64Map
#define _iterator Integer64Integer64MapIterator
#define _pair Integer64Integer64MapPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_Integer64Integer64Map
