#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
original="$(cat /usr/share/nginx/html/assets/runtime-environment.json)"
${original//"${env}"/"${env}"} >> /usr/share/nginx/html/assets/runtime-environment.json
updatedString="$(cat /usr/share/nginx/html/assets/runtime-environment.json)"
${updatedString//"${port}"/"${port}"} >> /usr/share/nginx/html/assets/runtime-environment.json
#echo "${newStr}"
nginx -g 'daemon off;'