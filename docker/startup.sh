#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
original="$(cat /usr/share/nginx/html/assets/runtime-environment.json)"
envUpdatedStr=${original//"dev"/"${env}"} 
portUpdatedString=${envUpdatedStr//"8082"/"${port}"}
echo "${portUpdatedString}"
nginx -g 'daemon off;'