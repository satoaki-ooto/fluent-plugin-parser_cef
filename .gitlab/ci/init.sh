#!/bin/bash

if [ ! -f ./VERSION ]; then
    echo ${CI_COMMIT_TAG} >> ~/VERSION
fi

if [ -f VERSION ]; then
    cp /dev/null VERSION
    echo ${CI_COMMIT_TAG} >> ~/VERSION
fi