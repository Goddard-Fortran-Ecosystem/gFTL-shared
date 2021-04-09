# We attempt to use find_package() first for each dependency.  But all
# dependencies are also available as submodules.
include(build_submodule)
build_submodule(../extern/gFTL PROJECT GFTL TARGET GFTL::gftl)

add_subdirectory(v1)
if (TARGET GFTL::gftl-v2)
  add_subdirectory(v2)
endif ()
