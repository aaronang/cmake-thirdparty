cmake_minimum_required(VERSION 3.5)
project(thirdparty)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(THIRD_PARTY_DIR "${CMAKE_CURRENT_SOURCE_DIR}/thirdparty" CACHE PATH "Installation path of third-party libraries")

find_package(Blosc REQUIRED)
find_package(GoogleTest REQUIRED)
