FROM ubuntu:14.04

# Update base system
RUN apt-get -y update && apt-get -y upgrade

# Install Nginx
RUN apt-get install -q -y nginx

# Clean default web site and copy frontend config of Nginx
RUN rm /etc/nginx/sites-enabled/default
COPY host.idfe /etc/nginx/sites-available/idfe
RUN cd /etc/nginx/sites-enabled ; ln -s ../sites-available/idfe ./

EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
