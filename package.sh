#!/usr/bin/env sh

script_location="$(dirname $0)"

if [ -n "$1" ]; then
    arch="$1"
else
    arch="$(uname -m)"
fi

ARCH=$arch appimagetool -v "$script_location/AppDir"
mv aiu-x86_64.AppImage ~/bin/aiu
