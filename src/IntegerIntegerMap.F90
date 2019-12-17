module gFTL_IntegerIntegerMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL_Integer32Integer32Map, only: IntegerIntegerMap => Integer32Integer32Map
  use gFTL_Integer32Integer32Map, only: IntegerIntegerMapIterator => Integer32Integer32MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL_Integer64Integer64Map, only: IntegerIntegerMap => Integer64Integer64Map
  use gFTL_Integer64Integer64Map, only: IntegerIntegerMapIterator => Integer64Integer64MapIterator

#else

#  define _key integer
#  define _value integer
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
