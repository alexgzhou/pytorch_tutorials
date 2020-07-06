#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ "$1" == "cpi" ]; then
    cd $DIR && mkdir -p ../temp
    find . -name "*.ipynb" | cpio -updm ../temp 
fi

if [ "$1" == "cpp" ]; then
    cd $DIR && mkdir -p ../temp_py
    find . -name "*.py" | cpio -updm ../temp_py
fi