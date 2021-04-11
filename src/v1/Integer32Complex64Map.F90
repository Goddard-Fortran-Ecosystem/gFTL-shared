module gFTL1_Integer32Complex64Map
  use, intrinsic:: iso_fortran_env, only: INT32, REAL64

#define _key type(integer(kind=INT32))
#define _value type(complex(kind=REAL64))
#define _map Integer32Complex64Map
#define _iterator Integer32Complex64MapIterator
#define _pair Integer32Complex64Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_Integer32Complex64Map

module gFTL_Integer32Complex64Map
   use gFTL1_Integer32Complex64Map
end module gFTL_Integer32Complex64Map
