module gFTL_Integer32DoubleMapMod

#if _DOUBLE_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer32Real64MapMod, only: Integer32DoubleMap => Integer32Real64Map
  use gFTL_Integer32Real64MapMod, only: Integer32DoubleMapIterator => Integer32Real64MapIterator

#elif _DOUBLE_DEAULT_KIND == _ISO_REAL128

  use gFTL_Integer32Real128MapMod, only: Integer32DoubleMap => Integer32Real128Map
  use gFTL_Integer32Real128MapMod, only: Integer32DoubleMapIterator => Integer32Real128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(real)
#  define _map IntegerDoubleMap
#  define _iterator IntegerDoubleMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer32DoubleMapMod
