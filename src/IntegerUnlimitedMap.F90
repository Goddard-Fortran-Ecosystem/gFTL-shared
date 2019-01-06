module gFTL_IntegerUnlimitedMapMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32UnlimitedMapMod, only: IntegerUnlimitedMap => Integer32UnlimitedMap
  use gFTL_Integer32UnlimitedMapMod, only: IntegerUnlimitedMapIterator => Integer32UnlimitedMapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64UnlimitedMapMod, only: IntegerUnlimitedMap => Integer64UnlimitedMap
  use gFTL_Integer64UnlimitedMapMod, only: IntegerUnlimitedMapIterator => Integer64UnlimitedMapIterator

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

end module gFTL_IntegerUnlimitedMapMod
