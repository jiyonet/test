FROM webdevops/php-apache-dev:latest
MAINTAINER rongda.shen
LABEL Discription="wordpress based on centos7" version="alpha"
COPY index.html /var/www/html/
COPY wordpress-4.9.4-zh_CN.zip /var/www/html/
RUN unzip /var/www/html/wordpress-4.9.4-zh_CN.zip && \
rm -rf /var/www/html/wordpress-4.9.4-zh_CN.zip
VOLUME /data
EXPOSE 80
