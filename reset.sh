#!/bin/bash
set -e
WINPTY=""
if grep -qE "(Microsoft|WSL|MINGW)" /proc/version &> /dev/null; then
    WINPTY="winpty"
fi

for i in `docker ps -a | grep salt | awk '{print $1}'`; do $WINPTY docker rm $i; done