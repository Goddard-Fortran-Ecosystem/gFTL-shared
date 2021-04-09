module gFTL1_IntegerLogicalMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL1_Integer32LogicalMap, only: IntegerLogicalMap => Integer32LogicalMap
  use gFTL1_Integer32LogicalMap, only: IntegerLogicalMapIterator => Integer32LogicalMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL1_Integer64LogicalMap, only: IntegerLogicalMap => Integer64LogicalMap
  use gFTL1_Integer64LogicalMap, only: IntegerLogicalMapIterator => Integer64LogicalMapIterator

#else

#  define _key type(integer)
#  define _value type(logical)
#  define _map IntegerLogicalMap
#  define _iterator IntegerLogicalMapIterator
#  define _pair IntegerLogicalPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL1_IntegerLogicalMap

module gFTL_IntegerLogicalMap
   use gFTL1_IntegerLogicalMap
end module gFTL_IntegerLogicalMap
