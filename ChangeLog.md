# ChangeLog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.1.0] - 2021-01-31

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
