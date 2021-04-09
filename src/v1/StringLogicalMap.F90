module gFTL1_StringLogicalMap

#include "types/key_deferredLengthString.inc"
#define _value type(logical)
#define _map StringLogicalMap
#define _iterator StringLogicalMapIterator
#define _pair StringLogicalPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_StringLogicalMap

module gFTL_StringLogicalMap
   use gFTL1_StringLogicalMap
end module gFTL_StringLogicalMap
