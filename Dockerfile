FROM ubuntu
MAINTAINER madhava
LABEL this project is for interior drsign
RUN apt update -y
RUN apt install apache2 -y
COPY . /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
