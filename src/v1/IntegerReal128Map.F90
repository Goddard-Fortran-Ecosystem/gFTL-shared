module gFTL1_IntegerReal128Map

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL1_Integer32Real128Map, only: IntegerReal128Map => Integer32Real128Map
   use gFTL1_Integer32Real128Map, only: IntegerReal128MapIterator => Integer32Real128MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL1_Integer64Real128Map, only: IntegerReal128Map => Integer64Real128Map
   use gFTL1_Integer64Real128Map, only: IntegerReal128MapIterator => Integer64Real128MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL128

#  define _key type(integer)
#  define _value type(real(kind=REAL128))
#  define _map IntegerReal128Map
#  define _iterator IntegerReal128MapIterator
#  define _pair IntegerReal128Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerReal128Map

module gFTL_IntegerReal128Map
   use gFTL1_IntegerReal128Map
end module gFTL_IntegerReal128Map
