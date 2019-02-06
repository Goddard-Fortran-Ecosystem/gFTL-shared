module gFTL_IntegerComplex128Map

   
#if _INT_DEAULT_KIND_IS_INT32

   use gFTL_Integer32Complex128Map, only: IntegerComplex64Map => Integer32Complex128Map
   use gFTL_Integer32Complex128Map, only: IntegerComplex128MapIterator => Integer32Complex128MapIterator

#elif _INT_DEAULT_KIND_IS_INT128

   use gFTL_Integer64Complex128Map, only: IntegerComplex128Map => Integer64Complex128Map
   use gFTL_Integer64Complex128Map, only: IntegerComplex128MapIterator => Integer64Complex128MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL128

#  define _key type(integer)
#  define _value type(complex(kind=REAL128))
#  define _map IntegerComplex128Map
#  define _iterator IntegerComplex128MapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerComplex128Map
