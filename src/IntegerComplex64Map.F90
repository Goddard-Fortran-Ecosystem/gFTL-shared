module gFTL_IntegerComplex64Map

   
#if defined(_INT_DEFAULT_KIND_IS_INT32)

   use gFTL_Integer32Complex64Map, only: IntegerComplex64Map => Integer32Complex64Map
   use gFTL_Integer32Complex64Map, only: IntegerComplex64MapIterator => Integer32Complex64MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

   use gFTL_Integer64Complex64Map, only: IntegerComplex64Map => Integer64Complex64Map
   use gFTL_Integer64Complex64Map, only: IntegerComplex64MapIterator => Integer64Complex64MapIterator

#else

   use, intrinsic :: iso_fortran_env, only: REAL64

#  define _key type(integer)
#  define _value type(complex(kind=REAL64))
#  define _map IntegerComplex64Map
#  define _iterator IntegerComplex64MapIterator
#  define _pair IntegerComplex64Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerComplex64Map
