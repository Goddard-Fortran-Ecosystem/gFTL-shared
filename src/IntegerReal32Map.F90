module gFTL_IntegerReal32Map

   
#if _INT_DEFAULT_KIND_IS_INT32

   use gFTL_Integer32Real32Map, only: IntegerReal32Map => Integer32Real32Map
   use gFTL_Integer32Real32Map, only: IntegerReal32MapIterator => Integer32Real32MapIterator

#elif _INT_DEFAULT_KIND_IS_INT64

   use gFTL_Integer64Real32Map, only: IntegerReal32Map => Integer64Real32Map
   use gFTL_Integer64Real32Map, only: IntegerReal32MapIterator => Integer64Real32MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL32

#  define _key type(integer)
#  define _value type(real(kind=REAL32))
#  define _map IntegerReal32Map
#  define _iterator IntegerReal32MapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerReal32Map
