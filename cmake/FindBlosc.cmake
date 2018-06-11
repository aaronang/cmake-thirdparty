include(FindPackageHandleStandardArgs)

find_path(BLOSC_INCLUDE_DIR 
    NAMES blosc.h
    HINTS $ENV{BLOSC_ROOT}/include
          ${BLOSC_ROOT}/include
          ${THIRD_PARTY_DIR}/include
)

find_library(BLOSC_LIBRARY
    NAMES blosc
    HINTS $ENV{BLOSC_ROOT}/lib
          ${BLOSC_ROOT}/lib
          ${THIRD_PARTY_DIR}/lib
)

find_package_handle_standard_args(Blosc DEFAULT_MSG BLOSC_LIBRARY BLOSC_INCLUDE_DIR)

if(BLOSC_FOUND AND NOT TARGET Blosc::Blosc)
    add_library(Blosc::Blosc SHARED IMPORTED)
    set_target_properties(Blosc::Blosc PROPERTIES
        IMPORTED_LOCATION ${BLOSC_LIBRARY}
        INTERFACE_INCLUDE_DIRECTORIES ${BLOSC_INCLUDE_DIR}
    )
endif()

mark_as_advanced(BLOSC_FOUND BLOSC_INCLUDE_DIR BLOSC_LIBRARY)
