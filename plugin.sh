#!/bin/bash

if [ -z "${PLUGIN_FROM}" ]; then
  echo "please provide the url to clone from in FROM";
  exit 1
fi

if [ -z "${PLUGIN_FROM}" ]; then
  echo "please provide the url to push to in TO";
  exit 1
fi

if [ -n "${PLUGIN_FROM_PASS}" -a -n "${PLUGIN_FROM_USER}" ]; then
  HOST=$(echo ${PLUGIN_FROM} | awk -F/ '{print $3}')
  echo "machine ${HOST} login ${PLUGIN_FROM_USER} password ${PLUGIN_FROM_PASS}" >> ~/.netrc
fi

if [ -n "${PLUGIN_TO_PASS}" -a -n "${PLUGIN_TO_USER}" ]; then
  HOST=$(echo ${PLUGIN_TO} | awk -F/ '{print $3}')
  echo "machine ${HOST} login ${PLUGIN_TO_USER} password ${PLUGIN_TO_PASS}" >> ~/.netrc
fi


rm -rf drone-mirror
mkdir drone-mirror
cd drone-mirror

git clone --mirror ${PLUGIN_FROM} mirror
cd mirror
git push --all ${PLUGIN_TO}
cd ../..
rm -rf drone-mirror
