module gFTL_Integer32DoubleComplexMap

#if _DOUBLE_DEFAULT_KIND_IS_REAL64

  use gFTL_Integer32Complex64Map, only: Integer32DoubleComplexMap => Integer32Complex64Map
  use gFTL_Integer32Complex64Map, only: Integer32DoubleComplexMapIterator => Integer32Complex64MapIterator

#elif _DOUBLE_DEFAULT_KIND_IS_REAL128

  use gFTL_Integer32Complex128Map, only: Integer32DoubleComplexMap => Integer32Complex128Map
  use gFTL_Integer32Complex128Map, only: Integer32DoubleComplexMapIterator => Integer32Complex128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(complex(kind=kind(0.0d0)))
#  define _map Integer32DoubleComplexMap
#  define _iterator Integer32DoubleComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer32DoubleComplexMap
