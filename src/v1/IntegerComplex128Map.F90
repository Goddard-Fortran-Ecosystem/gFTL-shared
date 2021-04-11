module gFTL1_IntegerComplex128Map

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL1_Integer32Complex128Map, only: IntegerComplex128Map => Integer32Complex128Map
   use gFTL1_Integer32Complex128Map, only: IntegerComplex128MapIterator => Integer32Complex128MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL1_Integer64Complex128Map, only: IntegerComplex128Map => Integer64Complex128Map
   use gFTL1_Integer64Complex128Map, only: IntegerComplex128MapIterator => Integer64Complex128MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL128

#  define _key type(integer)
#  define _value type(complex(kind=REAL128))
#  define _map IntegerComplex128Map
#  define _iterator IntegerComplex128MapIterator
#  define _pair IntegerComplex128Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerComplex128Map

module gFTL_IntegerComplex128Map
   use gFTL1_IntegerComplex128Map
end module gFTL_IntegerComplex128Map
