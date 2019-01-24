module gFTL_Integer64ComplexMap

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_Integer64Complex32Map, only: Integer64ComplexMap => Integer64Complex32Map
  use gFTL_Integer64Complex32Map, only: Integer64ComplexMapIterator => Integer32Complex32MapIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer64Complex64Map, only: Integer64ComplexMap => Integer64Complex64Map
  use gFTL_Integer64Complex64Map, only: Integer64ComplexMapIterator => Integer64Complex64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT64
 
#  define _key type(integer(kind=INT64))
#  define _value type(complex)
#  define _map Integer64ComplexMap
#  define _iterator Integer64ComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer64ComplexMap
