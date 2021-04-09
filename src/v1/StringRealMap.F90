module gFTL1_StringRealMap

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL1_StringReal32Map, only: StringRealMap => StringReal32Map
  use gFTL1_StringReal32Map, only: StringRealMapIterator => StringReal32MapIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL1_StringReal64Map, only: StringRealMap => StringReal64Map
  use gFTL1_StringReal64Map, only: StringRealMapIterator => StringReal64MapIterator

#else
   
#  include "types/key_deferredLengthString.inc"
#  define _value type(real)
#  define _map StringRealMap
#  define _iterator StringRealMapIterator
#  define _pair StringRealPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_StringRealMap

module gFTL_StringRealMap
   use gFTL1_StringRealMap
end module gFTL_StringRealMap
   
