module gFTL_IntegerLogicalMap

#if _INT_DEFAULT_KIND_IS_INT32

  use gFTL_Integer32LogicalMap, only: IntegerLogicalMap => Integer32LogicalMap
  use gFTL_Integer32LogicalMap, only: IntegerLogicalMapIterator => Integer32LogicalMapIterator

#elif _INT_DEFAULT_KIND_IS_INT64

  use gFTL_Integer64LogicalMap, only: IntegerLogicalMap => Integer64LogicalMap
  use gFTL_Integer64LogicalMap, only: IntegerLogicalMapIterator => Integer64LogicalMapIterator

#else

#  define _key type(integer)
#  define _value type(logical)
#  define _map IntegerLogicalMap
#  define _iterator IntegerLogicalMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerLogicalMap
