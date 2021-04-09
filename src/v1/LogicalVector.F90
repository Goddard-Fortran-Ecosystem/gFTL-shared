module gFTL1_LogicalVector

#define _type type(logical)
#define _vector LogicalVector
#define _vectoriterator LogicalVectorIterator
#include "templates/vector.inc"
#undef _vectoriterator
#undef _vector
#undef _type

end module gFTL1_LogicalVector

module gFTL_LogicalVector
   use gFTL1_LogicalVector
end module gFTL_LogicalVector
