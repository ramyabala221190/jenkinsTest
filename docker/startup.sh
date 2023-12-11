echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
# envsubst < "/usr/share/nginx/html/assets/runtime-environment.json" | sponge "/usr/share/nginx/html/assets/runtime-environment.json"
#envsubst '$name,$port' < "/usr/share/nginx/html/assets/runtime-environment.js"
#cat "/usr/share/nginx/html/assets/runtime-environment.js"
# tmpfile=$(mktemp)
# cp "/usr/share/nginx/html/assets/runtime-environment.json" $tmpfile
# envsubst '$name,$port' < $tmpfile  && mv $tmpfile "/usr/share/nginx/html/assets/runtime-environment.json"

# envsub "/usr/share/nginx/html/assets/runtime-environment.js"
ls .
nginx -g 'daemon off;'
