FROM httpd:2.4-alpine
# Remove default Apache placeholder
RUN rm -f /var/www/html/index.html
RUN apt-get update && apt-get install -y curl
COPY public/ /var/www/html/
EXPOSE 80