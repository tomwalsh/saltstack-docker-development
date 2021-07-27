#!/bin/bash
set -e
export OSENV="ubuntu18.04"
WINPTY=""
if grep -qE "(MINGW)" /proc/version &> /dev/null; then
    WINPTY="winpty"
fi
if [ -n "$1" ]; then
        export OSENV=$1
fi
$WINPTY docker-compose -f ./docker-compose.yml exec $OSENV-salt-minion bash