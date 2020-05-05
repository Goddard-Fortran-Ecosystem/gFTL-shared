module gFTL_IntegerInteger64Map

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL_Integer32Integer64Map, only: IntegerInteger64Map => Integer32Integer64Map
  use gFTL_Integer32Integer64Map, only: IntegerInteger64MapIterator => Integer32Integer64MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL_Integer64Integer64Map, only: IntegerInteger64Map => Integer64Integer64Map
  use gFTL_Integer64Integer64Map, only: IntegerInteger64MapIterator => Integer64Integer64MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT64
 
#  define _key type(integer)
#  define _value type(integer(kind=INT64))
#  define _map IntegerInteger64Map
#  define _iterator IntegerInteger64MapIterator
#  define _pair IntegerInteger64Pair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerInteger64Map
