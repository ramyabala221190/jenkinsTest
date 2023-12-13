#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
str="$(cat /usr/share/nginx/html/assets/runtime-environment.js)"
newStr=${str//"${env}"/"prod"}
echo "${newStr}"
nginx -g 'daemon off;'