echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
# envsubst < "/usr/share/nginx/html/assets/runtime-environment.json" | sponge "/usr/share/nginx/html/assets/runtime-environment.json"
#envsubst '$name,$port' < "/usr/share/nginx/html/assets/runtime-environment.js"
#cat "/usr/share/nginx/html/assets/runtime-environment.js"
# tmpfile=$(mktemp)
# cp "/usr/share/nginx/html/assets/runtime-environment.json" $tmpfile
# envsubst '$name,$port' < $tmpfile  && mv $tmpfile "/usr/share/nginx/html/assets/runtime-environment.json"
ls "/usr"
ls "/usr/share"
ls "/usr/share/nginx"
ls "/usr/share/nginx/html"
ls "/usr/share/nginx/html/assets"
envsub "/usr/share/nginx/html/assets/runtime-environment.js"
nginx -g 'daemon off;'
