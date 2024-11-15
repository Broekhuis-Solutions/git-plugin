#!/bin/bash
DOWNLOAD_DIR=~/Downloads/git-plugin
CONTAINER_ID=$(docker ps -a --filter "ancestor=git-plugin-compiler-setup" --format "{{.ID}}"):/code/target/git.hpi

mkdir ${DOWNLOAD_DIR}

docker cp $CONTAINER_ID ${DOWNLOAD_DIR}