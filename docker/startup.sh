#!/bin/bash
echo "Starting Container...."
echo "Runtime arguments: env = ${env}"
nginx -g 'daemon off;'
