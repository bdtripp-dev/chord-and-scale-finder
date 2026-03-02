FROM httpd:2.4
# Remove default Apache placeholder
RUN rm -f /usr/local/apache2/htdocs/index.html
RUN apt-get update && apt-get install -y curl
COPY public/ /usr/local/apache2/htdocs/
EXPOSE 80