module gFTL1_IntegerComplexMap

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL1_Integer32ComplexMap, only: IntegerComplexMap => Integer32ComplexMap
   use gFTL1_Integer32ComplexMap, only: IntegerComplexMapIterator => Integer32ComplexMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL1_Integer64ComplexMap, only: IntegerComplexMap => Integer64ComplexMap
   use gFTL1_Integer64ComplexMap, only: IntegerComplexMapIterator => Integer64ComplexMapIterator

#else

#  define _key type(integer)
#  define _value type(complex)
#  define _map IntegerComplexMap
#  define _iterator IntegerComplexMapIterator
#  define _pair IntegerComplexPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerComplexMap

module gFTL_IntegerComplexMap
   use gFTL1_IntegerComplexMap
end module gFTL_IntegerComplexMap
