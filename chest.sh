#!/usr/bin/env sh

if not type cmake 2>/dev/null; then
    echo "Can't find cmake!"
    exit 0;
fi

if [ ! -d "build" ]; then
    mkdir -p build
fi

(cd build; cmake ..; make)

