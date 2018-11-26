FROM scratch
ADD centos-7-docker.tar.xz /
MAINTAINER rongda.shen
LABEL Discription="wordpress based on centos7" version="alpha"
CMD ["/bin/bash"]
RUN yum update -y\
 && yum clean all
RUN yum install epel-release -y\
 && yum clean all
RUN yum install -y php \
 php-pecl-xdebug \
 php-soap \
 php-mysql \
 php-gd \
 php-process \
 php-xml \
 php-mbstring \
 mysql-server \
 php-zendframework \
 htmlpurifier \
 jpgraph-tuleap \
 php-pear-Mail-mimeDecode \
 rcs \
 cvs \
 php-guzzle \
 php-password-compat \
 unzip \
 tar \
 subversion \
 bzip2 \
 php-pecl-xdebug \
 git \
 && yum clean all
RUN yum update -y \
 && yum clean all
COPY index.html /usr/local/apache2/htdocs/
COPY wordpress-4.9.4-zh_CN.zip /usr/local/apache2/htdocs/
RUN unzip /usr/local/apache2/htdocs/wordpress-4.9.4-zh_CN.zip && \
rm -rf /usr/local/apache2/htdocs/wordpress-4.9.4-zh_CN.zip
VOLUME /data
EXPOSE 80
