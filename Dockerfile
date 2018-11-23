FROM ubuntu:14.04
MAINTAINER innamurivinod@gmail.com
#Install PHP 5.5
RUN apt-get update && \ 
    apt-get install python-software-properties -y && \
#    add-apt-repository ppa:ondrej/php5  && \
    apt-get install -y php5  && \
    php -v
#Install apache2 2.4
RUN apt-get install apache2 -y
#install mysql 5.5
RUN apt-get update && \
#add-apt-repository -y ppa:ondrej/mysql-5.5  && \
    #apt-get update && \
    apt-get install mysql-server php5-mysql -y

COPY info.php /var/www/html/
RUN service mysql restart && \
    service apache2 restart
EXPOSE 80
CMD /bin/bash

