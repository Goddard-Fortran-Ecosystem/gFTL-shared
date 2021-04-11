module gFTL1_Integer32DoubleMap

#if defined(_DOUBLE_DEFAULT_KIND_IS_REAL64)

  use gFTL1_Integer32Real64Map, only: Integer32DoubleMap => Integer32Real64Map
  use gFTL1_Integer32Real64Map, only: Integer32DoubleMapIterator => Integer32Real64MapIterator

#elif defined(_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL1_Integer32Real128Map, only: Integer32DoubleMap => Integer32Real128Map
  use gFTL1_Integer32Real128Map, only: Integer32DoubleMapIterator => Integer32Real128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(double precision)
#  define _map Integer32DoubleMap
#  define _iterator Integer32DoubleMapIterator
#  define _pair Integer32DoublePair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_Integer32DoubleMap

module gFTL_Integer32DoubleMap
   use gFTL1_Integer32DoubleMap
end module gFTL_Integer32DoubleMap
