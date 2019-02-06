module gFTL_IntegerRealMap

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32RealMap, only: IntegerRealMap => Integer32RealMap
   use gFTL_Integer32RealMap, only: IntegerRealMapIterator => Integer32RealMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64RealMap, only: IntegerRealMap => Integer64RealMap
   use gFTL_Integer64RealMap, only: IntegerRealMapIterator => Integer64RealMapIterator

#else

#  define _key type(integer)
#  define _value type(real)
#  define _map IntegerRealMap
#  define _iterator IntegerRealMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerRealMap
