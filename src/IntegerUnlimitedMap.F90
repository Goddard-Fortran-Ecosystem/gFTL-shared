module gFTL_IntegerUnlimitedMap

#if _INT_DEFAULT_KIND_IS_INT32

  use gFTL_Integer32UnlimitedMap, only: IntegerUnlimitedMap => Integer32UnlimitedMap
  use gFTL_Integer32UnlimitedMap, only: IntegerUnlimitedMapIterator => Integer32UnlimitedMapIterator

#elif _INT_DEFAULT_KIND_IS_INT64

  use gFTL_Integer64UnlimitedMap, only: IntegerUnlimitedMap => Integer64UnlimitedMap
  use gFTL_Integer64UnlimitedMap, only: IntegerUnlimitedMapIterator => Integer64UnlimitedMapIterator

#else

 
#  define _key type(integer)
#  include "types/value_unlimitedPoly.inc"
#  define _map IntegerUnlimitedMap
#  define _iterator IntegerUnlimitedMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerUnlimitedMap
