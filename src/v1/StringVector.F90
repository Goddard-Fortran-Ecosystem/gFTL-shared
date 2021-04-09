module gFTL1_StringVector

#include "types/deferredLengthString.inc"
#define _vector StringVector
#define _vectoriterator StringVectorIterator

#include "templates/vector.inc"

#undef _vectoriterator
#undef _vector
#undef _type

end module gFTL1_StringVector

module gFTL_StringVector
   use gFTL1_StringVector
end module gFTL_StringVector
