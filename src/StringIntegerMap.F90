module gFTL_StringIntegerMap

#if _INT_DEFAULT_KIND_IS_INT32

  use gFTL_StringInteger32Map, only: StringIntegerMap => StringInteger32Map
  use gFTL_StringInteger32Map, only: StringIntegerMapIterator => StringInteger32MapIterator

#elif _INT_DEFAULT_KIND_IS_INT64

  use gFTL_StringInteger64Map, only: StringIntegerMap => StringInteger64Map
  use gFTL_StringInteger64Map, only: StringIntegerMapIterator => StringInteger64MapIterator

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

end module gFTL_StringIntegerMap
