module gFTL1_StringReal32Map
  use, intrinsic:: iso_fortran_env, only: REAL32

#include "types/key_deferredLengthString.inc"
#define _value type(real(kind=REAL32))
#define _map StringReal32Map
#define _iterator StringReal32MapIterator
#define _pair StringReal32Pair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_StringReal32Map

module gFTL_StringReal32Map
   use gFTL1_StringReal32Map
end module gFTL_StringReal32Map
