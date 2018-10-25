#!/bin/bash

fileDir=$(cd "$(dirname "$0")"; pwd)
projectDir=$(dirname "$fileDir")

cd $projectDir

# check edp
echo "[edp build]: ./node"

edp build --config ./edp-build-config-node.js --force

echo "[asset node]: ./"

if [ -d ./node ]; then

    ls ./node | xargs -I {} [ -d {} ] && rm -r {}

    cp -r ./node/* ./

fi

echo "[edp build done]"


