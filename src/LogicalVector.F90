module gFTL_LogicalVectorMod

#define _type type(logical)
#define _vector LogicalVector
#define _vectoriterator LogicalVectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type

end module gFTL_LogicalVectorMod
