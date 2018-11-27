FROM webdevops/php-apache-dev:latest
MAINTAINER rongda.shen
LABEL Discription="wordpress based on centos7" version="alpha"
COPY index.html /app
COPY wordpress-4.9.4-zh_CN.zip /app
RUN unzip /app/wordpress-4.9.4-zh_CN.zip -d /app && \
rm -rf /app/wordpress-4.9.4-zh_CN.zip
VOLUME /data
EXPOSE 80
