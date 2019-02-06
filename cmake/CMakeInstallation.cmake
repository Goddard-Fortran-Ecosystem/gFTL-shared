#-----------------------------------------------------------------------------
# Add Target(s) to CMake Install for import into other projects
#-----------------------------------------------------------------------------

if (NOT gFTL_EXTERNALLY_CONFIGURED)

  if (gFTL_EXPORTED_TARGETS)
    install (
      EXPORT ${gFTL-shared_EXPORTED_TARGETS}
      DESTINATION ${gFTL_INSTALL_CMAKE_DIR}/hdf5 # why here?
      FILE ${gFTL-shared_PACKAGE}-targets.cmake
      NAMESPACE ${gFTL-shared_PACKAGE}
      COMPONENT configinstall
      )
  endif ()

  #-----------------------------------------------------------------------------
  # Export all exported targets to the build tree for use by parent project
  #-----------------------------------------------------------------------------
  export (
    TARGETS ${gFTL-shared_LIBRARIES_TO_EXPORT}
    FILE ${gFTL-shared_PACKAGE}-targets.cmake
    NAMESPACE ${gFTL-shared_PACKAGE}::
    )

endif ()
  
