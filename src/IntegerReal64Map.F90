module gFTL_IntegerReal64Map

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32Real64Map, only: IntegerReal64Map => Integer32Real64Map
   use gFTL_Integer32Real64Map, only: IntegerReal64MapIterator => Integer32Real64MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64Real64Map, only: IntegerReal64Map => Integer64Real64Map
   use gFTL_Integer64Real64Map, only: IntegerReal64MapIterator => Integer64Real64MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL64

#  define _key type(integer)
#  define _value type(real(kind=REAL64))
#  define _map IntegerReal64Map
#  define _iterator IntegerReal64MapIterator
#  define _pair IntegerReal64Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerReal64Map
