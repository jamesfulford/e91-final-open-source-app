FROM httpd:2.4.41
COPY ./build/ /usr/local/apache2/htdocs/
