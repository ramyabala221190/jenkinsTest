echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
envsubst < /usr/share/nginx/html/assets/json/runtime.json
nginx -g 'daemon off;'