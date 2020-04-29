module gFTL_IntegerDoubleComplexMap

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32DoubleComplexMap, only: IntegerDoubleComplexMap => Integer32DoubleComplexMap
   use gFTL_Integer32DoubleComplexMap, only: IntegerDoubleComplexMapIterator => Integer32DoubleComplexMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64DoubleComplexMap, only: IntegerDoubleComplexMap => Integer64DoubleComplexMap
   use gFTL_Integer64DoubleComplexMap, only: IntegerDoubleComplexMapIterator => Integer64DoubleComplexMapIterator

#else

#  define _key type(integer)
#  define _value type(complex(kind=kind(0.d0)))
#  define _map IntegerDoubleComplexMap
#  define _iterator IntegerDoubleComplexMapIterator
#  define _pair IntegerDoubleComplexMapPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerDoubleComplexMap
