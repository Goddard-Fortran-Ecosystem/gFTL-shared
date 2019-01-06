module gFTL_StringIntegerMapMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_StringInteger32MapMod, only: StringIntegerMap => StringInteger32Map
  use gFTL_StringInteger32MapMod, only: StringIntegerMapIterator => StringInteger32MapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_StringInteger64MapMod, only: StringIntegerMap => StringInteger64Map
  use gFTL_StringInteger64MapMod, only: StringIntegerMapIterator => StringInteger64MapIterator

#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(integer)
#  define _map StringIntegerMap
#  define _iterator StringIntegerMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_StringIntegerMapMod
