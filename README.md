# CMake Boilerplate

## Getting Started

```bash
# Install dependencies of third-party libraries using Homebrew or APT.
$ apt-get install -y ...

# Build third-party libraries.
$ cd thirdparty
$ cmake .
$ make -j

# Build main project out-of-source.
$ cd ..
$ mkdir build
$ cd build
$ cmake ..
$ make -j
```