#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ "$1" == "cp" ]; then
    find ${DIR} -name "*.ipynb" | cpio -updm ${DIR}/../temp 
fi