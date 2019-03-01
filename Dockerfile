FROM nginx:1.15.8 

RUN touch /var/run/nginx.pid && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx && \
  sed -i '/user  nginx/d' /etc/nginx/nginx.conf && \
  sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

USER www-data
EXPOSE 8080
