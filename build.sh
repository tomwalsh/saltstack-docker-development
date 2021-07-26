#!/bin/bash
export OSENV="ubuntu18.04"
if [ -n "$1" ]; then
    export OSENV=$1
fi
echo "Building ${OSENV}..."
docker-compose -f ./docker-compose.yml up --build