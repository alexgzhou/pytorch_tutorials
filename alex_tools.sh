#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ "$1" == "cp" ]; then
    cd $DIR && mkdir -p ../temp
    find . -name "*.ipynb" | cpio -updm ../temp 
fi