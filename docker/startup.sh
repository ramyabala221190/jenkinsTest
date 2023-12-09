echo "Starting application..."
echo "name = ${name}"
echo "port = ${port}"
envsubst '${name},${port}' > /src/assets/runtime-environment.json 
nginx -g 'daemon off;'