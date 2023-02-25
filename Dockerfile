FROM centos:latest
RUN yum install -y httpd\
 zip\
 unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page279/jack-and-rose.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip jack-and-rose.zip
RUN cp -rvf jack-and-rose.zip/* .
RUN rm -rf jack-and-rose jack-and-rose.zip.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 




#FROM centos:latest
#RUN yum install -y httpd\
 #zip\
 #unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/zezmon.zip /var/www/html/
#WORKDIR /var/www/html
#RUN unzip webuild.zip
#RUN cp -rvf webuild/* .
#RUN rm -rf webuild webuild.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80 22