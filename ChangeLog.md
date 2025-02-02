# ChangeLog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.10.0] - 2025-01-31

### Added 

- LLVMFlang compiler support

### Changed

- Updated gFTL to v1.15.0
- Update CI to have `gfortran-10` and `gfortran-11` only on `ubuntu-22.04`
- Update CI NVIDIA to NVHPC 24.7
- Add Flang to CI

## [1.9.0] - 2024-07-09

### Changed

- Added gftl-shared-v2-as-default to install list
- Added `-quiet` flag for NAG Fortran
- Remove `macos-11` and `macos-12` from GitHub Actions, move to use `macos-13` and `macos-14`
- Updated gFTL to v1.14.0
- Add Ubuntu 24 to CI that has `gfortran-13`. Remove `gfortran-13` test from ubuntu 22, add `gfortran-14`
- Up `cmake_minimum_required`

## [1.8.0] - 2024-03-03

### Added

- Fujitsu compiler support

## Changed

- Results from running trial sources during CMake config are now stored in the CMake cache
- Updated gFTL submodule to v1.12.0

## [1.7.0] - 2023-11-29

### Fixed

- Add `-check nouninit` for Intel LLVM to work around [`ifx` bug](https://github.com/HPC-Bugs/reproducers/tree/main/compiler/Fortran/ifx/allocatable).

### Changed

- Updated gFTL submodule to v1.11.0

## [1.6.1] - 2023-07-18

### Fixed

- Fixed issue where the names of some iterators for containers were not being correctly named.  E.g., StringSetIterator was only named SetIterator.

### Added
## [1.6.0] - 2023-04-13

### Added

- Added `IntelLLVM.cmake` file as a copy of `Intel.cmake` to support the LLVM Intel compiler frontends

### Changed

- Updated gFTL submodule to v1.10.0

## [1.5.1] - 2023-01-23

### Fixed

- Fixes for GNU Make builds
- Update gFTL submodule to v1.8.2

## [1.5.0] - 2022-05-31

### Fixed

- Fix use of `-Od` flag with Intel on non-Windows machines

### Changed

- NAG compiler flags - to reduce useless warning messages.
- Updated gFTL submodule to v1.8.0
- Updated GitHub Actions
  - OSs
    - Remove macos-10.15
    - Add ubuntu-22.04 and macos-12
  - Compilers
   - Removed gfortran-8
   - Added gfortran-11
   - Added gfortran-12 (for ubuntu-22.04)

## [1.4.1] - 2022-03-23

### Changed

- Updated gFTL submodule to v1.6.0

## [1.4.0] - 2022-03-23

### Added

- Add `NVHPC.cmake` file for NVHPC support

## [1.3.6] - 2021-11-16

### Fixed

- eliminates some compiler warnings from gFTL submodule

## [1.3.5] - 2021-11-15

### Fixed
- Missing public interfaces for Set containers
- Extended line length for gFortran
- Incorrect path in CMake logic.  Only affected internal
  builds for subsequently deleted executable targets.

## [1.3.4] - 2021-11-12

### Added

- Added support for compiling on Windows with Intel compiler.

## [1.3.3] - 2021-10-27

### Changed

- Updated gFTL submodule to v1.5.1 (apparently did not take in 1.3.1)

## [1.3.2] - 2021-09-30

- Mistake in last change not caught because of skipping
make clean.

## [1.3.1] - 2021-09-30

- Workaround for ifort duplicate symbols in modules.

### Changed

- split v2 source files such that wrapper modules are in a separate
  library.  This appears to work around a `duplicate symbol` issue
  that arises under Intel on OS X when linking to v1 and v2
  simultaneously.  Users that want v2 as the default should link with
  `GFTL-SHARED::gftl-shared-v2-as-default` rather than
  `GFTL-SHARED::gftl-shared`.
  
- Updated gFTL submodule to v1.5.1.

## [1.3.0] - 2021-04-09

### Added

- gFTL-shared now provides 2 sets of containers in libraries
  `GFTL_SHARED::gftl1-shared` and `GFTL_SHARED::gftl2-shared`.  The
  legacy `GFTL_SHARED::gftl-shared` currently points to the v1
  library, but will be updated to v2 when gFTL formally roles out
  v2.0.
  
  Projects can gradually update to the v2 interfaces by using the new
  module namespace prefixes: "gFTL1" and "gFTL2" respectively and link
  to both libraries.  Alternatively, a project that wishes to only use
  one or the other can continue to use the "gFTL" namespace prefix.


## [1.2.0] - 2021-02-06

### Added

- Improved ability to embed within other projects.

### Changed

- gFTL-shared now uses CMake namespaces.    Upstream projects should link with
  `GFTL_SHARED::gftl-shared` instead of just `gftl-shared`.
  
- Updated gFTL submodule.

## [1.1.3] - 2021-01-31

### Fixed

3rd times a charm.

## [1.1.2] - 2021-01-31

### Fixed

- Similar fixes as in 1.1.1

## [1.1.1] - 2021-01-31

### Fixed

- Incorrect variable in build_submodules.cmake was interfering with
  builds of some upstream projects.

## [1.1.0] - 2020-12-07

### Added

- improved support for including gFTL-shared within other projects
  (as opposed to using `find_package()`)

### Changed

- updated to latest gFTL (changes related to above)
	
## [1.0.7] - 2020-05-12
- Trivial upate of submodule
	
## [1.0.6] - 2020-05-05

### Changed
   - overrode the default name for Pair types in generated Maps
     Was tripping an XLF bug, but this change is also potentially
     useful to users.
## [1.0.5] - 2020-04-08

### Changed
   - Enabled CMAKE_POSITION_INDEPENDENT_CODE

## [1.0.4] - 2020-04-06

### Changed
   - updated gFTL to v1.2.5

## [1.0.3] - 2019-11-07

### Changed
   - updated gFTL to include memory leak workaround for Intel 18
