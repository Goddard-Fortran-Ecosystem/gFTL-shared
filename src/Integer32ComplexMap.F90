module gFTL_Integer32ComplexMapMod

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_Integer32Complex32MapMod, only: Integer32ComplexMap => Integer32Complex32Map
  use gFTL_Integer32Complex32MapMod, only: Integer32ComplexMapIterator => Integer32Complex32MapIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_Integer32Complex64MapMod, only: Integer32ComplexMap => Integer32Complex64Map
  use gFTL_Integer32Complex64MapMod, only: Integer32ComplexMapIterator => Integer32Complex64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer(kind=INT32))
#  define _value type(complex)
#  define _map Integer32ComplexMap
#  define _iterator Integer32ComplexMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_Integer32ComplexMapMod
