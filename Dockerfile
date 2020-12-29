FROM centos:latest

RUN yum update -y
RUN yum install -y httpd\
zip\
unzip
RUN service httpd restart
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/shicso.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip shicso.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
expose 80
