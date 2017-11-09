FROM centos
MAINTAINER Karol Bisztyga <karolbisztyga@gmail.com>

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170801"

RUN yum update -y
RUN rpm --rebuilddb;yum install httpd -y; yum clean all
ADD index.html /var/www/html/index.html
RUN echo "ServerName 127.0.0.1:80" >> /etc/httpd/conf/httpd.conf
ADD start_httpd.sh /start_httpd.sh
RUN chmod +x /start_httpd.sh
