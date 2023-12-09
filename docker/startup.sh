echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
envsubst < "/usr/share/nginx/html/assets/runtime-environment.json"
nginx -g 'daemon off;'