include(FindPackageHandleStandardArgs)

set(GTEST_ROOT ${THIRD_PARTY_DIR})

find_package(GTest REQUIRED)

mark_as_advanced(
    GOOGLETEST_FOUND
    GTEST_LIBRARIES
    GTEST_MAIN_LIBRARIES
    GTEST_BOTH_LIBRARIES
    GTEST_INCLUDE_DIRS
    )
