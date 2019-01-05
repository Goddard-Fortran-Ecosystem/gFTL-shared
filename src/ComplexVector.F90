module gFTL_ComplexVectorMod

#if _REAL_DEAULT_KIND == _ISO_REAL32

  use gFTL_Complex32VectorMod, only: ComplexVector => Complex32Vector
  use gFTL_Complex32VectorMod, only: ComplexVectorIterator => Complex32VectorIterator

#elif _REAL_DEAULT_KIND == _ISO_REAL64

  use gFTL_Complex64VectorMod, only: ComplexVector => Complex64Vector
  use gFTL_Complex64VectorMod, only: ComplexVectorIterator => Complex64VectorIterator

#else

#  define _type type(complex)
#  define _vector ComplexVector
#  define _vectoriterator ComplexVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL_ComplexVectorMod
