module gFTL_Integer32DoubleComplexMapMod

#if _DOUBLE_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer32Complex64MapMod, only: Integer32DoubleComplexMap => Integer32Complex64Map
  use gFTL_Integer32Complex64MapMod, only: Integer32DoubleComplexMapIterator => Integer32Complex64MapIterator

#elif _DOUBLE_DEAULT_KIND == _ISO_REAL128

  use gFTL_Integer32Complex128MapMod, only: Integer32DoubleComplexMap => Integer32Complex128Map
  use gFTL_Integer32Complex128MapMod, only: Integer32DoubleComplexMapIterator => Integer32Complex128MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(double complex)
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

end module gFTL_Integer32DoubleComplexMapMod
