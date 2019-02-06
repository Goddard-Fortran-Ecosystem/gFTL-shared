module gFTL_Integer32RealMap

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL_Integer32Real32Map, only: Integer32RealMap => Integer32Real32Map
  use gFTL_Integer32Real32Map, only: Integer32RealMapIterator => Integer32Real32MapIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL_Integer32Real64Map, only: Integer32RealMap => Integer32Real64Map
  use gFTL_Integer32Real64Map, only: Integer32RealMapIterator => Integer32Real64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(real)
#  define _map Integer32RealMap
#  define _iterator Integer32RealMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer32RealMap
