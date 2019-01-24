module gFTL_StringRealMap

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_StringReal32Map, only: StringRealMap => StringReal32Map
  use gFTL_StringReal32Map, only: StringRealMapIterator => StringReal32MapIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_StringReal64Map, only: StringRealMap => StringReal64Map
  use gFTL_StringReal64Map, only: StringRealMapIterator => StringReal64MapIterator

#else
   
#  include "types/key_deferredLengthString.inc"
#  define _value type(real)
#  define _map StringRealMap
#  define _iterator StringRealMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_StringRealMap
