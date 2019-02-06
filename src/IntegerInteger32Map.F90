module gFTL_IntegerInteger32Map

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL_Integer32Integer32Map, only: IntegerInteger32Map => Integer32Integer32Map
  use gFTL_Integer32Integer32Map, only: IntegerInteger32MapIterator => Integer32Integer32MapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL_Integer64Integer32Map, only: IntegerInteger32Map => Integer64Integer32Map
  use gFTL_Integer64Integer32Map, only: IntegerInteger32MapIterator => Integer64Integer32MapIterator

#else

  use, intrinsic :: iso_fortran_env, only: INT32
 
#  define _key type(integer)
#  define _value type(integer(kind=INT32))
#  define _map IntegerInteger32Map
#  define _iterator IntegerInteger32MapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerInteger32Map
