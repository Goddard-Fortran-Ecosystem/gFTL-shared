module gFTL1_StringStringMap

#include "types/key_deferredLengthString.inc"
#include "types/value_deferredLengthString.inc"
#define _map StringStringMap
#define _iterator StringStringMapIterator
#define _pair StringStringPair
#define _alt

#include "templates/map.inc"

#undef _alt
#undef _iterator
#undef _map
#undef _value
#undef _key  

end module gFTL1_StringStringMap

module gFTL_StringStringMap
   use gFTL1_StringStringMap
end module gFTL_StringStringMap
