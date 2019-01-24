module gFTL_StringDoubleMap

#if _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_StringDouble64Map, only: StringDoubleMap => StringReal64Map
  use gFTL_StringDouble64Map, only: StringDoubleMapIterator => StringReal64MapIterator

#elif defined(_ISO_REAL128) && (_DOUBLE_DEAULT_KIND == _ISO_REAL128)

  use gFTL_StringDouble128Map, only: StringDoubleMap => StringReal128Map
  use gFTL_StringDouble128Map, only: StringDoubleMapIterator => StringReal128MapIterator
#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(double precision)
#  define _map StringDoubleMap
#  define _iterator StringDoubleMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_StringDoubleMap
