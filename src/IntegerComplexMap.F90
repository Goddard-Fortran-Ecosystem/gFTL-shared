module gFTL_IntegerComplexMap

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32ComplexMap, only: IntegerComplexMap => Integer32ComplexMap
   use gFTL_Integer32ComplexMap, only: IntegerComplexMapIterator => Integer32ComplexMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64ComplexMap, only: IntegerComplexMap => Integer64ComplexMap
   use gFTL_Integer64ComplexMap, only: IntegerComplexMapIterator => Integer64ComplexMapIterator

#else

#  define _key type(integer)
#  define _value type(complex)
#  define _map IntegerComplexMap
#  define _iterator IntegerComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerComplexMap
