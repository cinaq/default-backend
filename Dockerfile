FROM nginx:alpine

# Remove default NGINX Config
# Take care of Nginx logging
RUN rm /etc/nginx/conf.d/default.conf && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

# required permissions
RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

# NGINX Config
COPY ./default.conf /etc/nginx/conf.d/default.conf

# Resources
COPY html/ /var/www/html/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
