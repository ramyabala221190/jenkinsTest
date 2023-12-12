#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
replaceValue='DEV'
replaceWith="${env}"
str="$(< /usr/share/nginx/html/assets/runtime-environment.js)"
newStr=${str//$replaceValue/$replaceWith}
echo "${newStr}"
nginx -g 'daemon off;'