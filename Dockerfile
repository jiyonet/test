FROM webdevops/php-apache-dev:latest
MAINTAINER rongda.shen
LABEL Discription="wordpress based on centos7" version="alpha"
COPY index.html /usr/local/apache2/htdocs/
COPY wordpress-4.9.4-zh_CN.zip /usr/local/apache2/htdocs/
RUN unzip /usr/local/apache2/htdocs/wordpress-4.9.4-zh_CN.zip && \
rm -rf /usr/local/apache2/htdocs/wordpress-4.9.4-zh_CN.zip
VOLUME /data
EXPOSE 80
