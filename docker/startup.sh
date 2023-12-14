#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
original="$(cat /usr/share/nginx/html/assets/runtime-environment.json)"
envUpdatedStr="${original//"dev"/"${env}"}"
echo "${envUpdatedStr}"
portUpdatedString="${envUpdatedStr//8082/"${port}"}"
echo "${portUpdatedString}"
echo "${portUpdatedString}" > /usr/share/nginx/html/assets/runtime-environment.json
nginx -g 'daemon off;'