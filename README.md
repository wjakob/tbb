### Intel(R) Threading Building Blocks

This is git repository is currently based on TBB 4.3 Update 2 and will be
updated from time to time to track the most recent release. The only
modification is the addition of a CMake-based build system.

This is convenient for other projects that use CMake and TBB because
TBB can be easily incorporated into their build process using the
[ExternalProject_Add](http://www.cmake.org/cmake/help/v3.0/module/ExternalProject.html)
mechanism.

Currently, the CMake-based build can create static versions of `libtbb`,
`libtbbmalloc` and `libtbbmalloc_proxy` for the Intel `i386`/`x86_64`
architectures on Windows (Visual Studio), MacOS (clang) and Linux (gcc).
Other combinations may work but have not been tested.

See index.html for general directions and documentation regarding TBB.

See examples/index.html for runnable examples and directions.

See http://threadingbuildingblocks.org for full documentation
and software information.

Note: Intel, Thread Building Blocks, and TBB are either registered trademarks or
trademarks of Intel Corporation in the United States and/or other countries.
