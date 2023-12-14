#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
destFile="/usr/share/nginx/html/assets/runtime-environment.json"
original="$(cat "${destFile}")"
envUpdatedStr="${original//"dev"/"${env}"}"
echo "${envUpdatedStr}"
portUpdatedString="${envUpdatedStr//8082/"${port}"}"
echo "${portUpdatedString}"
echo "${portUpdatedString}" > "${destFile}"
cat "${destFile}"
nginx -g 'daemon off;'