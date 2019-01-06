module gFTL_StringLogicalMapMod

#include "types/key_deferredLengthString.inc"
#define _value type(logical)
#define _map StringLogicalMap
#define _iterator StringLogicalMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringLogicalMapMod
