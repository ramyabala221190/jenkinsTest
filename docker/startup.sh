#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
replaceValue='dev'
replaceWith="${env}"
newStr=${"/usr/share/nginx/html/assets/runtime-environment.js"//$replaceValue/$replaceWith}
echo $newStr
nginx -g 'daemon off;'
# envsub "/usr/share/nginx/html/assets/runtime-environment.js"
