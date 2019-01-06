module gFTL_IntegerLogicalMapMod

#if _INT_DEAULT_KIND == _ISO_INT32

  use gFTL_Integer32LogicalMapMod, only: IntegerLogicalMap => Integer32LogicalMap
  use gFTL_Integer32LogicalMapMod, only: IntegerLogicalMapIterator => Integer32LogicalMapIterator

#elif _INT_DEAULT_KIND == _ISO_INT64

  use gFTL_Integer64LogicalMapMod, only: IntegerLogicalMap => Integer64LogicalMap
  use gFTL_Integer64LogicalMapMod, only: IntegerLogicalMapIterator => Integer64LogicalMapIterator

#else

#  define _key type(integer)
#  define _value type(logical)
#  define _map IntegerStringMap
#  define _iterator IntegerStringMapIterator
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerLogicalMapMod
