FROM centos:latest
MAINTAINER sanspirit@gmail.com
RUN apt -y install httpd
ADD https//www.free-css.com/assets/files/files-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*.
RUN rm -rf_MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
