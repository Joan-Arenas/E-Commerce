FROM nginx:stable
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /var/www
RUN   chown -R www-data:www-data /var/www && \
chown www-data:www-data /var/www && \
usermod -u 1000 www-data

CMD ["nginx", "-g", "daemon off;"]
