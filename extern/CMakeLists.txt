# We attempt to use find_package() first for each dependency.  But all
# dependencies are also available as submodules.

include(build_submodule)
build_submodule(gFTL PROJECT GFTL TARGET gftl)

add_library (extern-gftl-shared INTERFACE)
target_link_libraries (extern-gftl-shared INTERFACE gftl gftl-shared)

set (library_dest "lib/GFTL_SHARED-${GFTL_SHARED_VERSION_MAJOR}.${GFTL_SHARED_VERSION_MINOR}")
install (TARGETS extern-gftl-shared EXPORT GFTL_SHARED DESTINATION "${library_dest}")
