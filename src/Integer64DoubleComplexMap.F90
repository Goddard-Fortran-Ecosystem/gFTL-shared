module gFTL_Integer64DoubleComplexMap

#if _DOUBLE_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer64Complex64Map, only: Integer64DoubleComplexMap => Integer64Complex64Map
  use gFTL_Integer64Complex64Map, only: Integer64DoubleComplexMapIterator => Integer64Complex64MapIterator

#elif _DOUBLE_DEAULT_KIND == _ISO_REAL128

  use gFTL_Integer64Complex128Map, only: Integer64DoubleComplexMap => Integer64Complex128Map
  use gFTL_Integer64Complex128Map, only: Integer64DoubleComplexMapIterator => Integer64Complex128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT64
 
#  define _key type(integer(kind=INT64))
#  define _value type(double complex)
#  define _map Integer64DoubleComplexMap
#  define _iterator Integer64DoubleComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer64DoubleComplexMap
