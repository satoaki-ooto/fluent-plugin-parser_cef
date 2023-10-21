#!/bin/bash

VERSION_FILE="${CI_PROJECT_DIR}/VERSION"

if [ ! -f $VERSION_FILE ]; then
    echo ${CI_COMMIT_TAG} > $VERSION_FILE
fi

if [ -f $VERSION_FILE ]; then
    cp /dev/null $VERSION_FILE
    echo ${CI_COMMIT_TAG} > $VERSION_FILE
fi
