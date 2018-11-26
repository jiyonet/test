FROM httpd:2.4.37

COPY index.html /usr/local/apache2/htdocs/

VOLUME /data
EXPOSE 80
