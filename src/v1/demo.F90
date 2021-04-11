program main

   use, intrinsic :: iso_fortran_env, only: INT32
   use, intrinsic :: iso_fortran_env, only: INT64
   use, intrinsic :: iso_fortran_env, only: REAL32
   use, intrinsic :: iso_fortran_env, only: REAL64
#ifdef _ISO_REAL128
   use, intrinsic :: iso_fortran_env, only: REAL128
#endif

   use gFTL1_Integer32Vector
   use gFTL1_Integer64Vector
   use gFTL1_IntegerVector

   use gFTL1_Real32Vector
   use gFTL1_Real64Vector
#ifdef _ISO_REAL128
   use gFTL1_Real128Vector
#endif
   use gFTL1_RealVector
   use gFTL1_DoubleVector

   use gFTL1_Complex32Vector
   use gFTL1_Complex64Vector
#ifdef _ISO_REAL128
   use gFTL1_Complex128Vector
#endif
   use gFTL1_ComplexVector
   use gFTL1_DoubleComplexVector

   use gFTL1_LogicalVector
   use gFTL1_StringVector
   use gFTL1_UnlimitedVector


   use gFTL1_Integer32Integer32Map
   use gFTL1_Integer32Integer64Map
   use gFTL1_Integer32IntegerMap

   use gFTL1_Integer32Real32Map
   use gFTL1_Integer32Real64Map
#ifdef _ISO_REAL128
   use gFTL1_Integer32Real128Map
#endif
   use gFTL1_Integer32RealMap
   use gFTL1_Integer32DoubleMap

   use gFTL1_Integer32Complex32Map
   use gFTL1_Integer32Complex64Map
#ifdef _ISO_REAL128
   use gFTL1_Integer32Complex128Map
#endif
   use gFTL1_Integer32ComplexMap
   use gFTL1_Integer32DoubleComplexMap

   use gFTL1_Integer32LogicalMap
   use gFTL1_Integer32StringMap
   use gFTL1_Integer32UnlimitedMap

   use gFTL1_Integer64Integer32Map
   use gFTL1_Integer64Integer64Map
   use gFTL1_Integer64IntegerMap

   use gFTL1_Integer64Real32Map
   use gFTL1_Integer64Real64Map
#ifdef _ISO_REAL128
   use gFTL1_Integer64Real128Map
#endif
   use gFTL1_Integer64RealMap
   use gFTL1_Integer64DoubleMap

   use gFTL1_Integer64Complex32Map
   use gFTL1_Integer64Complex64Map
#ifdef _ISO_REAL128
   use gFTL1_Integer64Complex128Map
#endif
   use gFTL1_Integer64ComplexMap
   use gFTL1_Integer64DoubleComplexMap

   use gFTL1_Integer64LogicalMap
   use gFTL1_Integer64StringMap
   use gFTL1_Integer64UnlimitedMap


   use gFTL1_IntegerInteger32Map
   use gFTL1_IntegerInteger64Map
   use gFTL1_IntegerIntegerMap

   use gFTL1_IntegerReal32Map
   use gFTL1_IntegerReal64Map
#ifdef _ISO_REAL128
   use gFTL1_IntegerReal128Map
#endif
   use gFTL1_IntegerRealMap
   use gFTL1_IntegerDoubleMap

   use gFTL1_IntegerComplex32Map
   use gFTL1_IntegerComplex64Map
#ifdef _ISO_REAL128
   use gFTL1_IntegerComplex128Map
#endif
   use gFTL1_IntegerComplexMap
   use gFTL1_IntegerDoubleComplexMap

   use gFTL1_IntegerLogicalMap
   use gFTL1_IntegerStringMap
   use gFTL1_IntegerUnlimitedMap

   use gFTL1_StringInteger32Map
   use gFTL1_StringInteger64Map
   use gFTL1_StringIntegerMap

   use gFTL1_StringReal32Map
   use gFTL1_StringReal64Map
#ifdef _ISO_REAL128
   use gFTL1_StringReal128Map
#endif
   use gFTL1_StringRealMap
   use gFTL1_StringDoubleMap

   use gFTL1_StringComplex32Map
   use gFTL1_StringComplex64Map
#ifdef _ISO_REAL128
   use gFTL1_StringComplex128Map
#endif
   use gFTL1_StringComplexMap
   use gFTL1_StringDoubleComplexMap

   use gFTL1_StringLogicalMap
   use gFTL1_StringStringMap
   use gFTL1_StringUnlimitedMap




   implicit none




   type(Integer32Vector) :: Integer32_vector
   type(Integer64Vector) :: Integer64_vector
   type(IntegerVector) :: Integer_vector

   type(Real32Vector) :: Real32_vector
   type(Real64Vector) :: Real64_vector
#ifdef _ISO_REAL128
   type(Real128Vector) :: Real128_vector
#endif
   type(RealVector) :: Real_vector
   type(DoubleVector) :: Double_vector

   type(Complex32Vector) :: Complex32_vector
   type(Complex64Vector) :: Complex64_vector
#ifdef _ISO_REAL128
   type(Complex128Vector) :: Complex128_vector
#endif
   type(ComplexVector) :: Complex_vector
   type(DoubleComplexVector) :: DoubleComplex_vector

   type(LogicalVector) :: Logical_vector
   type(StringVector) :: String_vector
   type(UnlimitedVector) :: Unlimited_vector


   type(Integer32Integer32Map) :: Integer32Integer32_map
   type(Integer32Integer64Map) :: Integer32Integer64_map
   type(Integer32IntegerMap) :: Integer32Integer_map

   type(Integer32Real32Map) :: Integer32Real32_map
   type(Integer32Real64Map) :: Integer32Real64_map
#ifdef _ISO_REAL128
   type(Integer32Real128Map) :: Integer32Real128_map
#endif
   type(Integer32RealMap) :: Integer32Real_map
   type(Integer32DoubleMap) :: Integer32Double_map

   type(Integer32Complex32Map) :: Integer32Complex32_map
   type(Integer32Complex64Map) :: Integer32Complex64_map
#ifdef _ISO_REAL128
   type(Integer32Complex128Map) :: Integer32Complex128_map
#endif
   type(Integer32ComplexMap) :: Integer32Complex_map
   type(Integer32DoubleComplexMap) :: Integer32DoubleComplex_map

   type(Integer32LogicalMap) :: Integer32Logical_map
   type(Integer32StringMap) :: Integer32String_map
   type(Integer32UnlimitedMap) :: Integer32Unlimited_map

   type(Integer64Integer32Map) :: Integer64Integer32_map
   type(Integer64Integer64Map) :: Integer64Integer64_map
   type(Integer64IntegerMap) :: Integer64Integer_map

   type(Integer64Real32Map) :: Integer64Real32_map
   type(Integer64Real64Map) :: Integer64Real64_map
#ifdef _ISO_REAL128
   type(Integer64Real128Map) :: Integer64Real128_map
#endif
   type(Integer64RealMap) :: Integer64Real_map
   type(Integer64DoubleMap) :: Integer64Double_map

   type(Integer64Complex32Map) :: Integer64Complex32_map
   type(Integer64Complex64Map) :: Integer64Complex64_map
#ifdef _ISO_REAL128
   type(Integer64Complex128Map) :: Integer64Complex128_map
#endif
   type(Integer64ComplexMap) :: Integer64Complex_map
   type(Integer64DoubleComplexMap) :: Integer64DoubleComplex_map

   type(Integer64LogicalMap) :: Integer64Logical_map
   type(Integer64StringMap) :: Integer64String_map
   type(Integer64UnlimitedMap) :: Integer64Unlimited_map


   type(IntegerInteger32Map) :: IntegerInteger32_map
   type(IntegerInteger64Map) :: IntegerInteger64_map
   type(IntegerIntegerMap) :: IntegerInteger_map

   type(IntegerReal32Map) :: IntegerReal32_map
   type(IntegerReal64Map) :: IntegerReal64_map
#ifdef _ISO_REAL128
   type(IntegerReal128Map) :: IntegerReal128_map
#endif
   type(IntegerRealMap) :: IntegerReal_map
   type(IntegerDoubleMap) :: IntegerDouble_map

   type(IntegerComplex32Map) :: IntegerComplex32_map
   type(IntegerComplex64Map) :: IntegerComplex64_map
#ifdef _ISO_REAL128
   type(IntegerComplex128Map) :: IntegerComplex128_map
#endif
   type(IntegerComplexMap) :: IntegerComplex_map
   type(IntegerDoubleComplexMap) :: IntegerDoubleComplex_map

   type(IntegerLogicalMap) :: IntegerLogical_map
   type(IntegerStringMap) :: IntegerString_map
   type(IntegerUnlimitedMap) :: IntegerUnlimited_map

   type(StringInteger32Map) :: StringInteger32_map
   type(StringInteger64Map) :: StringInteger64_map
   type(StringIntegerMap) :: StringInteger_map

   type(StringReal32Map) :: StringReal32_map
   type(StringReal64Map) :: StringReal64_map
#ifdef _ISO_REAL128
   type(StringReal128Map) :: StringReal128_map
#endif
   type(StringRealMap) :: StringReal_map
   type(StringDoubleMap) :: StringDouble_map

   type(StringComplex32Map) :: StringComplex32_map
   type(StringComplex64Map) :: StringComplex64_map
#ifdef _ISO_REAL128
   type(StringComplex128Map) :: StringComplex128_map
#endif
   type(StringComplexMap) :: StringComplex_map
   type(StringDoubleComplexMap) :: StringDoubleComplex_map

   type(StringLogicalMap) :: StringLogical_map
   type(StringStringMap) :: StringString_map
   type(StringUnlimitedMap) :: StringUnlimited_map



   call Integer32_vector%push_back(1_INT32)
   call Integer64_vector%push_back(1_INT64)
   call Integer_vector%push_back(1)

   call Real32_vector%push_back(1._REAL32)
   call Real64_vector%push_back(1._REAL64)
#ifdef _ISO_REAL128
   call Real128_vector%push_back(1._REAL128)
#endif
   call Real_vector%push_back(1.)
   call Double_vector%push_back(1.d0)

   call Complex32_vector%push_back((1._REAL32,2._REAL32))
   call Complex64_vector%push_back((1._REAL64,2._REAL64))
#ifdef _ISO_REAL128
   call Complex128_vector%push_back((1._REAL128,2._REAL128))
#endif
   call Complex_vector%push_back((1.,2.))
   call DoubleComplex_vector%push_back((1.d0,2.d0))

   call Logical_vector%push_back(.true.)
   call String_vector%push_back('fido')

   call Unlimited_vector%push_back(1)
   call Unlimited_vector%push_back(1.)
   call Unlimited_vector%push_back(.true.)
   call Unlimited_vector%push_back('string')



   call Integer32Integer32_map%insert(1_INT32, 2_INT32)
   call Integer32Integer64_map%insert(1_INT32, 2_INT64)
   call Integer32Integer_map%insert(1_INT32, 2)

   Integer32Integer_map = Integer32Integer32_map

   call Integer32Real32_map%insert(1_INT32, 2._REAL32)
   call Integer32Real64_map%insert(1_INT32, 2._REAL64)
#ifdef _ISO_REAL128
   call Integer32Real128_map%insert(1_INT32, 2._REAL128)
#endif
   call Integer32Real_map%insert(1_INT32, 2.)
   call Integer32Double_map%insert(1_INT32, 2.d0)

   call Integer32Complex32_map%insert(1_INT32, (2._REAL32,3._REAL32))
   call Integer32Complex64_map%insert(1_INT32, (2._REAL64,3._REAL64))
#ifdef _ISO_REAL128
   call Integer32Complex128_map%insert(1_INT32, (2._REAL128,3._REAL128))
#endif
   call Integer32Complex_map%insert(1_INT32, (2.,3.))
   call Integer32DoubleComplex_map%insert(1_INT32, (2.d0,3.d0))

   call Integer32Logical_map%insert(1_INT32, .true.)
   call Integer32String_map%insert(1_INT32, 'spot')

   call Integer32Unlimited_map%insert(1_INT32,2)
   call Integer32Unlimited_map%insert(1_INT32,2.)
   call Integer32Unlimited_map%insert(1_INT32,'string')



   call Integer64Integer32_map%insert(1_INT64, 2_INT32)
   call Integer64Integer64_map%insert(1_INT64, 2_INT64)
   call Integer64Integer_map%insert(1_INT64, 2)

   call Integer64Real32_map%insert(1_INT64, 2._REAL32)
   call Integer64Real64_map%insert(1_INT64, 2._REAL64)
#ifdef _ISO_REAL128
   call Integer64Real128_map%insert(1_INT64, 2._REAL128)
#endif
   call Integer64Real_map%insert(1_INT64, 2.)
   call Integer64Double_map%insert(1_INT64, 2.d0)

   call Integer64Complex32_map%insert(1_INT64, (2._REAL32,3._REAL32))
   call Integer64Complex64_map%insert(1_INT64, (2._REAL64,3._REAL64))
#ifdef _ISO_REAL128
   call Integer64Complex128_map%insert(1_INT64, (2._REAL128,3._REAL128))
#endif
   call Integer64Complex_map%insert(1_INT64, (2.,3.))
   call Integer64DoubleComplex_map%insert(1_INT64, (2.d0,3.d0))

   call Integer64Logical_map%insert(1_INT64, .true.)
   call Integer64String_map%insert(1_INT64, 'spot')

   call Integer64Unlimited_map%insert(1_INT64,2)
   call Integer64Unlimited_map%insert(1_INT64,2.)
   call Integer64Unlimited_map%insert(1_INT64,'string')



   call IntegerInteger32_map%insert(1, 2_INT32)
   call IntegerInteger64_map%insert(1, 2_INT64)
   call IntegerInteger_map%insert(1, 2)

   call IntegerReal32_map%insert(1, 2._REAL32)
   call IntegerReal64_map%insert(1, 2._REAL64)
#ifdef _ISO_REAL128
   call IntegerReal128_map%insert(1, 2._REAL128)
#endif
   call IntegerReal_map%insert(1, 2.)
   call IntegerDouble_map%insert(1, 2.d0)

   call IntegerComplex32_map%insert(1, (2._REAL32,3._REAL32))
   call IntegerComplex64_map%insert(1, (2._REAL64,3._REAL64))
#ifdef _ISO_REAL128
   call IntegerComplex128_map%insert(1, (2._REAL128,3._REAL128))
#endif
   call IntegerComplex_map%insert(1, (2.,3.))
   call IntegerDoubleComplex_map%insert(1, (2.d0,3.d0))

   call IntegerLogical_map%insert(1, .true.)
   call IntegerString_map%insert(1, 'spot')

   call IntegerUnlimited_map%insert(1,2)
   call IntegerUnlimited_map%insert(1,2.)
   call IntegerUnlimited_map%insert(1,'string')



   call StringInteger32_map%insert('A', 2_INT32)
   call StringInteger64_map%insert('A', 2_INT64)
   call StringInteger_map%insert('A', 2)

   call StringReal32_map%insert('A', 2._REAL32)
   call StringReal64_map%insert('A', 2._REAL64)
#ifdef _ISO_REAL128
   call StringReal128_map%insert('A', 2._REAL128)
#endif
   call StringReal_map%insert('A', 2.)
   call StringDouble_map%insert('A', 2.d0)

   call StringComplex32_map%insert('A', (2._REAL32,3._REAL32))
   call StringComplex64_map%insert('A', (2._REAL64,3._REAL64))
#ifdef _ISO_REAL128
   call StringComplex128_map%insert('A', (2._REAL128,3._REAL128))
#endif
   call StringComplex_map%insert('A', (2.,3.))
   call StringDoubleComplex_map%insert('A', (2.d0,3.d0))

   call StringLogical_map%insert('A', .true.)
   call StringString_map%insert('A', 'spot')

   call StringUnlimited_map%insert('A',2)
   call StringUnlimited_map%insert('A',2.)
   call StringUnlimited_map%insert('A','string')



end program main
