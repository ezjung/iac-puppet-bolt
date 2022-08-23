#!/bin/bash

if [ $# != 2 ]; then
    echo "You need 2 arguments for this script"
    exit 2
fi

export DEST=$1
export REPO=$2
# export BRANCH=${3:-"master"}

# echo $BRANCH

echo $DEST
echo $REPO

mkdir -p $DEST
cd $DEST

# -d check if directory presernt
if [ -d .git ]; then
    git reset --hard && git pull origin master
else
    git clone $REPO .
fi