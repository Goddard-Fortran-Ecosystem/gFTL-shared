module gFTL_StringComplexMap

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_StringComplex32Map, only: StringComplexMap => StringComplex32Map
  use gFTL_StringComplex32Map, only: StringComplexMapIterator => StringComplex32MapIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_StringComplex64Map, only: StringComplexMap => StringComplex64Map
  use gFTL_StringComplex64Map, only: StringComplexMapIterator => StringComplex64MapIterator

#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(complex)
#  define _map StringComplexMap
#  define _iterator StringComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_StringComplexMap
