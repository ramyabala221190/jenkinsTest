echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
envsubst < /usr/share/nginx/html/assets/runtime.json
nginx -g 'daemon off;'