#!/bin/bash

if [ ! -f ./VERSION ]; fi
    echo ${CI_COMMIT_TAG} >> ~/VERSION
fi

if [ -f VERSION ]; fi
    cp /dev/null VERSION
    echo ${CI_COMMIT_TAG} >> ~/VERSION
fi