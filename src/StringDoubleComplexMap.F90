module gFTL_StringDoubleComplexMap

#ifdef _REAL_DEFAULT_KIND_IS_REAL64

  use gFTL_StringDoubleComplex64Map, only: StringDoubleComplexMap => StringComplex64Map
  use gFTL_StringDoubleComplex64Map, only: StringDoubleComplexMapIterator => StringComplex64MapIterator

#elif defined(_ISO_REAL128) && defined(_DOUBLE_DEFAULT_KIND_IS_REAL128)

  use gFTL_StringDoubleComplex128Map, only: StringDoubleComplexMap => StringComplex128Map
  use gFTL_StringDoubleComplex128Map, only: StringDoubleComplexMapIterator => StringComplex128MapIterator

#else
  
 
#  include "types/key_deferredLengthString.inc"
#  define _value type(complex(kind=kind(0.0d0)))
#  define _map StringDoubleComplexMap
#  define _iterator StringDoubleComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_StringDoubleComplexMap
