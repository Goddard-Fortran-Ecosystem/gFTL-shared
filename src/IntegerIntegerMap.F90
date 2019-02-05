module gFTL_IntegerIntegerMap

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32Integer32Map, only: IntegerIntegerMap => Integer32Integer32Map
  use gFTL_Integer32Integer32Map, only: IntegerIntegerMapIterator => Integer32Integer32MapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64Integer64Map, only: IntegerIntegerMap => Integer64Integer64Map
  use gFTL_Integer64Integer64Map, only: IntegerIntegerMapIterator => Integer64Integer64MapIterator

#else

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

end module gFTL_IntegerIntegerMap
