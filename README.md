### Intel(R) Threading Building Blocks

[![Build Status](https://travis-ci.org/wjakob/tbb.svg?branch=master)](https://travis-ci.org/wjakob/tbb)
[![Build status](https://ci.appveyor.com/api/projects/status/fvepmk5nxekq27r8?svg=true)](https://ci.appveyor.com/project/wjakob/tbb/branch/master)

This is git repository is currently based on TBB 2017 Update 1 and will be
updated from time to time to track the most recent release. The only
modification is the addition of a CMake-based build system.

This is convenient for other projects that use CMake and TBB because TBB can be
easily incorporated into their build process using git submodules and a simple
``add_subdirectory`` command.

Currently, the CMake-based build can create shared and static versions of
`libtbb`, `libtbbmalloc` and `libtbbmalloc_proxy` for the Intel `i386`/`x86_64`
architectures on Windows (Visual Studio, MinGW), MacOS (clang) and Linux (gcc).
Other combinations may work but have not been tested.

See index.html for general directions and documentation regarding TBB.

See examples/index.html for runnable examples and directions.

See http://threadingbuildingblocks.org for full documentation
and software information.

Note: Intel, Thread Building Blocks, and TBB are either registered trademarks or
trademarks of Intel Corporation in the United States and/or other countries.

ORIGINAL README:

# Intel(R) Threading Building Blocks 2017 Update 1
[![Stable release](https://img.shields.io/badge/version-2017_U1-green.svg)] (https://github.com/01org/tbb/releases/tag/2017_U1)
[![Apache License Version 2.0](https://img.shields.io/badge/license-Apache_2.0-green.svg)](LICENSE)

Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that take
full advantage of multicore performance, that are portable, composable and have future-proof scalability.

## Release Information
Here are the latest [Changes] (CHANGES) and [Release Notes]
(doc/Release_Notes.txt) (contains system requirements and known issues).

## Documentation
* Intel(R) TBB [tutorial] (https://software.intel.com/en-us/tbb-tutorial)
* Intel(R) TBB general documentation: [stable] (https://software.intel.com/en-us/tbb-documentation)
and [latest] (https://www.threadingbuildingblocks.org/docs/help/index.htm)

## Support
Please report issues and suggestions via
[GitHub issues](https://github.com/01org/tbb/issues) or start a topic on the
[Intel(R) TBB forum](http://software.intel.com/en-us/forums/intel-threading-building-blocks/).

## How to Contribute
Please, read the instructions on the official [Intel(R) TBB open source site] (https://www.threadingbuildingblocks.org/submit-contribution).

------------------------------------------------------------------------
Intel and the Intel logo are trademarks of Intel Corporation or its subsidiaries in the U.S. and/or other countries.

\* Other names and brands may be claimed as the property of others.
