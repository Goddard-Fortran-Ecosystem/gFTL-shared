# gFTL-shared
Provides common gFTL containers of Fortran intrinsic types that are encountered frequently.

Starting with v1.3.0,  gFTL-shared now includes a new library based upon v2 versions of gFTL containers.   The release remains backward compatible; if users want to try the new style of containers they should link against GFTL_SHARED::gftl-shared2.    After a trial period, the v2 variants will become the default.  Projects that want to avoid upgrading can begin to link against GFTL_SHARED::gftl-shared1.    

See https://github.com/Goddard-Fortran-Ecosystem/gFTL   for more information about the v2 containers.
