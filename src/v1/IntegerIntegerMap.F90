module gFTL1_IntegerIntegerMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL1_Integer32Integer32Map, only: IntegerIntegerMap => Integer32Integer32Map
  use gFTL1_Integer32Integer32Map, only: IntegerIntegerMapIterator => Integer32Integer32MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL1_Integer64Integer64Map, only: IntegerIntegerMap => Integer64Integer64Map
  use gFTL1_Integer64Integer64Map, only: IntegerIntegerMapIterator => Integer64Integer64MapIterator

#else

#  define _key type(integer)
#  define _value type(integer)
#  define _map IntegerIntegerMap
#  define _iterator IntegerIntegerMapIterator
#  define _pair IntegerIntegerPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerIntegerMap

module gFTL_IntegerIntegerMap
   use gFTL1_IntegerIntegerMap
end module gFTL_IntegerIntegerMap
