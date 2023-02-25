FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd\
 zip\
 unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page279/jack-and-rose.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip webuild.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22




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