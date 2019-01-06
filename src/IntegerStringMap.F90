module gFTL_IntegerStringMapMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32StringMapMod, only: IntegerStringMap => Integer32StringMap
  use gFTL_Integer32StringMapMod, only: IntegerStringMapIterator => Integer32StringMapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64StringMapMod, only: IntegerStringMap => Integer64StringMap
  use gFTL_Integer64StringMapMod, only: IntegerStringMapIterator => Integer64StringMapIterator

#else

 
#  define _key type(integer)
#  include "types/value_deferredLengthString.inc"
#  define _map IntegerStringMap
#  define _iterator IntegerStringMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerStringMapMod
