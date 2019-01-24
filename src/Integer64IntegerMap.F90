module gFTL_Integer64IntegerMap

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer64Integer32Map, only: Integer64IntegerMap => Integer64Integer32Map
  use gFTL_Integer64Integer32Map, only: Integer64IntegerMapIterator => Integer64Integer32MapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64Integer64Map, only: Integer64IntegerMap => Integer64Integer64Map
  use gFTL_Integer64Integer64Map, only: Integer64IntegerMapIterator => Integer64Integer64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT64
 
#  define _key type(integer(kind=INT64))
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

end module gFTL_Integer64IntegerMap
