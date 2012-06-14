#!/bin/sh

function doexport {
    ditto log4cxx/target/$1/shared/liblog4cxx.dylib $2/bin/
    rm -rf $2/include/log4cxx
    ditto log4cxx/src/main/include/log4cxx $2/include/log4cxx
}

set +v

if [ "$1" = "debug" ]; then
        doexport $1 "$2/extern/prebuild/Debug/osx"
elif [ "$1" = "release" ]; then
        doexport $1 "$2/extern/prebuild/Release/osx"
else
        echo Usage: export debug/release path_to_pc_client_git_root
fi

