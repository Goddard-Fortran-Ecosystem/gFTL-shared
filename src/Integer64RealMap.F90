module gFTL_Integer64RealMap

#if _REAL_DEFAULT_KIND_IS_REAL32

  use gFTL_Integer64Real32Map, only: Integer64RealMap => Integer64Real32Map
  use gFTL_Integer64Real32Map, only: Integer64RealMapIterator => Integer64Real32MapIterator

#elif _REAL_DEFAULT_KIND_IS_REAL64

  use gFTL_Integer64Real64Map, only: Integer64RealMap => Integer64Real64Map
  use gFTL_Integer64Real64Map, only: Integer64RealMapIterator => Integer64Real64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(real)
#  define _map Integer64RealMap
#  define _iterator Integer64RealMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer64RealMap
