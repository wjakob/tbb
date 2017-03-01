### Formlabs fork of TBB

  * This repository is forked from `git@github.com:wjakob/tbb`, which is a fork
    of the official TBB repository with CMake build support added.
  * Please be very judicious modifying code in our branch manually, as this will
    make it difficult to keep our branch in sync with wjakob's.
  * He (wjakob) is fairly responsive and diligent about fixing issues (build
    failures) with his fork. If you are getting build failures, the first thing
    to do is to try reaching out to him. Chances are good that he will fix them
    on his end and then we can merge his fixes into our fork.
  * There are already hacks in our fork. A running effort should be made to get
    these out, so that we can stay as close as possible to wjakob's fork.
  * When integrating wjakob's changes into our fork, do not rebase. This will
    ruin everyone's checkouts of the repository. Instead,
      - merge `wjakob/tbb/master` into `Formlabs/tbb/formlabs`,
      - do a diff between these two to see how divergent our fork is,
      - delete any hacks that are no longer needed.

### Intel(R) Threading Building Blocks

[![Build Status](https://travis-ci.org/wjakob/tbb.svg?branch=master)](https://travis-ci.org/wjakob/tbb)
[![Build status](https://ci.appveyor.com/api/projects/status/fvepmk5nxekq27r8?svg=true)](https://ci.appveyor.com/project/wjakob/tbb/branch/master)

This is git repository is currently based on TBB 4.4 Update 4 and will be
updated from time to time to track the most recent release. The only
modification is the addition of a CMake-based build system.

This is convenient for other projects that use CMake and TBB because
TBB can be easily incorporated into their build process using git submodules
and a simple ``add_subdirectory`` command.

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
