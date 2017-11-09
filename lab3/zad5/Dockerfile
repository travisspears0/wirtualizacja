FROM centos
MAINTAINER Karol Bisztyga <karolbisztyga@gmail.com>

RUN adduser jan
RUN adduser kinga
RUN echo DockerLab | passwd kinga --stdin
RUN echo DockerLab | passwd jan --stdin
RUN yum install sudo -y
RUN usermod -aG users kinga
RUN usermod -aG users jan
RUN groupadd sudo
RUN echo "%sudo  ALL=(ALL)       ALL" >> /etc/sudoers
RUN usermod -aG sudo jan
RUN usermod -aG sudo kinga

LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="20170801"

