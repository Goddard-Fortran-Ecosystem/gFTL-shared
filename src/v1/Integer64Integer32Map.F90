module gFTL1_Integer64Integer32Map
  use, intrinsic:: iso_fortran_env, only: INT32, INT64

#define _key type(integer(kind=INT64))
#define _value type(integer(kind=INT32))
#define _map Integer64Integer32Map
#define _iterator Integer64Integer32MapIterator
#define _pair Integer64Integer32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer64Integer32Map

module gFTL_Integer64Integer32Map
   use gFTL1_Integer64Integer32Map
end module gFTL_Integer64Integer32Map
