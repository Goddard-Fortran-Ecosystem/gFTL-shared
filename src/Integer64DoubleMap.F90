module gFTL_Integer64DoubleMap

#if defined(_DOUBLE_DEFAULT_KIND_IS_REAL64)

  use gFTL_Integer64Real64Map, only: Integer64DoubleMap => Integer64Real64Map
  use gFTL_Integer64Real64Map, only: Integer64DoubleMapIterator => Integer64Real64MapIterator

#elif defined(_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL_Integer64Real128Map, only: Integer64DoubleMap => Integer64Real128Map
  use gFTL_Integer64Real128Map, only: Integer64DoubleMapIterator => Integer64Real128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT64
 
#  define _key type(integer(kind=INT64))
#  define _value type(double precision)
#  define _map Integer64DoubleMap
#  define _iterator Integer64DoubleMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer64DoubleMap
