module gFTL_StringVectorMod

#  include "types/deferredLengthString.inc"
#define _vector StringVector
#define _vectoriterator StringVectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type

end module gFTL_StringVectorMod
