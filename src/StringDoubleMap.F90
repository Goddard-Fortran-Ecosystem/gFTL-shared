module gFTL_StringDoubleMapMod

#if _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_StringDouble64MapMod, only: StringDoubleMap => StringReal64Map
  use gFTL_StringDouble64MapMod, only: StringDoubleMapIterator => StringReal64MapIterator

#elif defined(_ISO_REAL128) && (_DOUBLE_DEAULT_KIND == _ISO_REAL128)

  use gFTL_StringDouble128MapMod, only: StringDoubleMap => StringReal128Map
  use gFTL_StringDouble128MapMod, only: StringDoubleMapIterator => StringReal128MapIterator
#else
  
 
#  include "types/key_DeferredLengthString.inc"
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

end module gFTL_StringDoubleMapMod
