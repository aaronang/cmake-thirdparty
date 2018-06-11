cmake_minimum_required(VERSION 3.5)
project(thirdparty)

include(ExternalProject)

ExternalProject_Add(libblosc
    GIT_REPOSITORY    https://github.com/Blosc/c-blosc.git
    GIT_TAG           v1.14.2
    PREFIX            ${CMAKE_CURRENT_BINARY_DIR}
    TEST_COMMAND      ""
    UPDATE_COMMAND    ""
    CMAKE_ARGS        -DCMAKE_BUILD_TYPE:STRING=Release
                      -DBUILD_SHARED_LIBS:BOOL=ON
                      -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    )

ExternalProject_Add(libgtest
    GIT_REPOSITORY    https://github.com/google/googletest.git
    GIT_TAG           release-1.8.0
    PREFIX            ${CMAKE_CURRENT_BINARY_DIR}
    TEST_COMMAND      ""
    UPDATE_COMMAND    ""
    CMAKE_ARGS        -DCMAKE_BUILD_TYPE:STRING=Release
                      -DBUILD_SHARED_LIBS:BOOL=ON
                      -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    )