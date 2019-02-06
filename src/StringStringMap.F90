module gFTL_StringStringMap

#include "types/key_deferredLengthString.inc"
#include "types/value_deferredLengthString.inc"
#define _map StringStringMap
#define _iterator StringStringMapIterator
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL_StringStringMap
