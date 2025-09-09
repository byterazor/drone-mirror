#!/bin/bash

if [ -z "${PLUGIN_FROM}" ]; then
  echo "please provide the url to clone from in FROM";
  exit 1
fi

if [ -z "${PLUGIN_FROM}" ]; then
  echo "please provide the url to push to in TO";
  exit 1
fi

rm -rf drone-mirror
mkdir drone-mirror
cd drone-mirror

git clone --mirror ${PLUGIN_FROM} mirror
cd mirror
git push --all ${PLUGIN_TO}
cd ../..
rm -rf drone-mirror
