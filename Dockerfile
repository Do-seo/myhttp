FROM ubuntu:14.04
MAINTAINER "dsh <dsh@dshub.cloud>"
LABEL "purpose"="webserver practice"
RUN apt-get update && apt-get install apache2 -y
RUN apt-get install vim -y
ADD website.tar.gz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND

