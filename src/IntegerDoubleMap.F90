module gFTL_IntegerDoubleMap

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32DoubleMap, only: IntegerDoubleMap => Integer32DoubleMap
   use gFTL_Integer32DoubleMap, only: IntegerDoubleMapIterator => Integer32DoubleMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64DoubleMap, only: IntegerDoubleMap => Integer64DoubleMap
   use gFTL_Integer64DoubleMap, only: IntegerDoubleMapIterator => Integer64DoubleMapIterator

#else

#  define _key integer
#  define _value double precision
#  define _map IntegerDoubleMap
#  define _iterator IntegerDoubleMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerDoubleMap
