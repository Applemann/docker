#!/bin/bash

NONE_IMAGES=$(docker images -q --filter "dangling=true")
if [[ -n $NONE_IMAGES ]]; then
    docker image rm -f $(docker images -q --filter "dangling=true")
fi

