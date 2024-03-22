FROM nginx:latest

# Copy nginx.conf
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
# Copy entrypoint script
COPY ./nginx/entrypoint.sh /usr/local/bin/entrypoint.sh

# CMD [ "cat","./etc/nginx/nginx.conf" ]

