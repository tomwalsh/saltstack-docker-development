#!/bin/bash
set -e
WINPTY=""
if grep -qE "(MINGW)" /proc/version &> /dev/null; then
    WINPTY="winpty"
fi
$WINPTY docker-compose -f ./docker-compose.yml  exec salt-master bash