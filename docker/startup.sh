echo "Starting application..."
# echo "name = ${name}"
# echo "port = ${port}"
# envsubst < "/usr/share/nginx/html/assets/runtime-environment.json" | sponge "/usr/share/nginx/html/assets/runtime-environment.json"
#envsubst '$name,$port' < "/usr/share/nginx/html/assets/runtime-environment.json"

tmpfile=$(mktemp)
cp "/usr/share/nginx/html/assets/runtime-environment.json" $tmpfile
envsubst > $tmpfile && mv $tmpfile "/usr/share/nginx/html/assets/runtime-environment.json"
nginx -g 'daemon off;'
