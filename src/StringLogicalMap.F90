module gFTL_StringLogicalMap

#include "types/key_deferredLengthString.inc"
#define _value logical
#define _map StringLogicalMap
#define _iterator StringLogicalMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringLogicalMap
