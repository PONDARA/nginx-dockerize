#!/bin/bash

# Substitute environment variables in the Nginx configuration template
envsubst < /etc/nginx/nginx.conf > /usr/local/nginx/conf/nginx.conf
#envsubst < /usr/local/nginx/conf/sign.lua.template > /usr/local/nginx/conf/sign.lua
sed -i 's/NGINX/$/g' /usr/local/nginx/conf/nginx.conf

# Start Nginx in the foreground
/usr/local/nginx/sbin/nginx -g 'daemon off;'
