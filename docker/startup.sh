#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"

args_array=("$@")
for i in "${args_array[@]}"
do
  :
  echo "### Got variable $i ###"
done
echo "args_count = $#"

# envsub "/usr/share/nginx/html/assets/runtime-environment.js"
nginx -g 'daemon off;'
