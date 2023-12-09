echo "Starting application..."
# echo "name = ${name}"
# echo "port = ${port}"
# envsubst < "/usr/share/nginx/html/assets/runtime-environment.json" | sponge "/usr/share/nginx/html/assets/runtime-environment.json"
originalfile=/usr/share/nginx/html/assets/runtime-environment.json
tmpfile=$(mktemp)
cp -p $originalfile $tmpfile
cat $originalfile | envsubst > $tmpfile && mv $tmpfile $originalfile
nginx -g 'daemon off;'
