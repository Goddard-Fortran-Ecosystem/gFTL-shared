# We attempt to use find_package() first for each dependency.  But all
# dependencies are also available as submodules.

include(build_submodule)
build_submodule(gFTL PROJECT GFTL TARGET gftl)
