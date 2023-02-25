#FROM centos:latest
#RUN cd /etc/yum.repos.d/
#RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
#RUN yum install -y httpd \
 #zip \
 #unzip
#ADD  https://www.free-css.com/assets/files/free-css-templates/download/page278/zezmon.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip  zezmon 
#RUN cp -rvf site/* .
#RUN rm -rf zezmon zezmon.1
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80 




FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum install -y httpd\
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/jack-and-rose.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jack-and-rose.zip
RUN cp -rvf free-wedding-website-template/* .
RUN rm -rf jack-and-rose.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22