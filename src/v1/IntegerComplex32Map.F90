module gFTL1_IntegerComplex32Map

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL1_Integer32Complex32Map, only: IntegerComplex32Map => Integer32Complex32Map
   use gFTL1_Integer32Complex32Map, only: IntegerComplex32MapIterator => Integer32Complex32MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL1_Integer64Complex32Map, only: IntegerComplex32Map => Integer64Complex32Map
   use gFTL1_Integer64Complex32Map, only: IntegerComplex32MapIterator => Integer64Complex32MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL32

#  define _key type(integer)
#  define _value type(complex(kind=REAL32))
#  define _map IntegerComplex32Map
#  define _iterator IntegerComplex32MapIterator
#  define _pair IntegerComplex32Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerComplex32Map

module gFTL_IntegerComplex32Map
   use gFTL1_IntegerComplex32Map
end module gFTL_IntegerComplex32Map
