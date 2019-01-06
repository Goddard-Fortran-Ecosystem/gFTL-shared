module gFTL_StringStringMapMod

#include "types/key_DeferredLengthString.inc"
#include "types/value_DeferredLengthString.inc"

#define _map StringStringMap
#define _iterator StringStringMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringStringMapMod
