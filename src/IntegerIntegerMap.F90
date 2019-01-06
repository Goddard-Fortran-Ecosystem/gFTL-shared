module gFTL_IntegerIntegerMapMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32Integer32MapMod, only: IntegerIntegerMap => Integer32Integer32Map
  use gFTL_Integer32Integer32MapMod, only: IntegerIntegerMapIterator => Integer32Integer32MapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64Integer64MapMod, only: IntegerIntegerMap => Integer64Integer64Map
  use gFTL_Integer64Integer64MapMod, only: IntegerIntegerMapIterator => Integer64Integer64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer)
#  define _value type(integer)
#  define _map IntegerIntegerMap
#  define _iterator IntegerIntegerMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerIntegerMapMod
