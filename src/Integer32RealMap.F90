module gFTL_Integer32RealMapMod

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_Integer32Real32MapMod, only: Integer32RealMap => Integer32Real32Map
  use gFTL_Integer32Real32MapMod, only: Integer32RealMapIterator => Integer32Real32MapIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer32Real64MapMod, only: Integer32RealMap => Integer32Real64Map
  use gFTL_Integer32Real64MapMod, only: Integer32RealMapIterator => Integer32Real64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(real)
#  define _map IntegerRealMap
#  define _iterator IntegerRealMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer32RealMapMod
