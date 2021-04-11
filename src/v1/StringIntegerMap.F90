module gFTL1_StringIntegerMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL1_StringInteger32Map, only: StringIntegerMap => StringInteger32Map
  use gFTL1_StringInteger32Map, only: StringIntegerMapIterator => StringInteger32MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL1_StringInteger64Map, only: StringIntegerMap => StringInteger64Map
  use gFTL1_StringInteger64Map, only: StringIntegerMapIterator => StringInteger64MapIterator

#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(integer)
#  define _map StringIntegerMap
#  define _iterator StringIntegerMapIterator
#  define _pair StringIntegerPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_StringIntegerMap

module gFTL_StringIntegerMap
   use gFTL1_StringIntegerMap
end module gFTL_StringIntegerMap
