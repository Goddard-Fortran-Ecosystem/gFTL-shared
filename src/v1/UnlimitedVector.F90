module gFTL1_UnlimitedVector

#include "types/unlimitedPoly.inc"
#define _vector UnlimitedVector
#define _vectoriterator UnlimitedVectorIterator

#include "templates/vector.inc"

#undef _vectoriterator
#undef _vector
#undef _type

end module gFTL1_UnlimitedVector

module gFTL_UnlimitedVector
   use gFTL1_UnlimitedVector
end module gFTL_UnlimitedVector
