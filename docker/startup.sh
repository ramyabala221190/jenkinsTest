#!/bin/bash
echo "Starting Container..."
echo "env = ${env}"
echo "port = ${port}"
nginx -g 'daemon off;'