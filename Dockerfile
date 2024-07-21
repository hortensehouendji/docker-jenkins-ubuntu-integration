FROM centos:7

LABEL maintainer="cloudspace"

RUN yum -y update && yum clean all

RUN yum install httpd

COPY index.html /var/www/html

EXPOSE 80

# start httpd at container runtime
ENTRYPOINT [ "/usr/sbin/httpd" ]

# Run entrypoint in the background
CMD [ "-D","FOREGROUND" ]
