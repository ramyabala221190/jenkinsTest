#!/bin/sh
echo "Starting Container..."
echo "name = ${name}"
echo "port = ${port}"

echo "$1"
# envsubst < "/usr/share/nginx/html/assets/runtime-environment.json" | sponge "/usr/share/nginx/html/assets/runtime-environment.json"
#envsubst '$name,$port' < "/usr/share/nginx/html/assets/runtime-environment.js"
#cat "/usr/share/nginx/html/assets/runtime-environment.js"
# tmpfile=$(mktemp)
# cp "/usr/share/nginx/html/assets/runtime-environment.json" $tmpfile
# envsubst '$name,$port' < $tmpfile  && mv $tmpfile "/usr/share/nginx/html/assets/runtime-environment.json"
nginx -g 'daemon off;'
