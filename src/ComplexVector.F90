module gFTL_ComplexVector

#if defined(_REAL_DEFAULT_KIND_IS_REAL32)

  use gFTL_Complex32Vector, only: ComplexVector => Complex32Vector
  use gFTL_Complex32Vector, only: ComplexVectorIterator => Complex32VectorIterator

#elif defined(_REAL_DEFAULT_KIND_IS_REAL64)

  use gFTL_Complex64Vector, only: ComplexVector => Complex64Vector
  use gFTL_Complex64Vector, only: ComplexVectorIterator => Complex64VectorIterator

#else

#  define _type complex
#  define _vector ComplexVector
#  define _vectoriterator ComplexVectorIterator
#  include "templates/vector.inc"
#  undef _vectoriterator
#  undef _vector
#  undef _type

#endif
  
end module gFTL_ComplexVector
