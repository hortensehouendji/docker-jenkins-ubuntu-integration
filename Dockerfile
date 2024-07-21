# Specify the base image
FROM fedora:latest

# Describe the task to complete and the author
LABEL description="This is our first Dokerfile"
LABEL maintainer="cloudspace" 

# update all packages 
RUN yum -y update 

# Install httpd (Apache)
RUN yum -y install httpd

# copy index.html to the specify location in the container
COPY index.html /var/www/html/

EXPOSE 80

# Start httpd at container runtime
ENTRYPOINT ["/usr/sbin/httpd"]

# Run entrypoint in the background
CMD ["-D", "FOREGROUND"]
