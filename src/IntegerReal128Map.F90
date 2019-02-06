module gFTL_IntegerReal128Map

   
#if _INT_DEFAULT_KIND_IS_INT32

   use gFTL_Integer32Real128Map, only: IntegerReal128Map => Integer32Real128Map
   use gFTL_Integer32Real128Map, only: IntegerReal128MapIterator => Integer32Real128MapIterator

#elif _INT_DEFAULT_KIND_IS_INT64

   use gFTL_Integer64Real128Map, only: IntegerReal128Map => Integer64Real128Map
   use gFTL_Integer64Real128Map, only: IntegerReal128MapIterator => Integer64Real128MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL64
#  define _key type(integer)
#  define _value type(real(kind=REAL64))
#  define _map IntegerReal128Map
#  define _iterator IntegerReal128MapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerReal128Map
