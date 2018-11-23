# lamp_dockerfile
Install LAMP (PHP 5.5, Apache 2.4 and MySQL 5.5) on Ubuntu 14.04 

#Lamp installization :
===================
url :https://tecadmin.net/install-lamp-on-ubuntu-14-04/

#Php path setup:
==============
vim /var/www/html/info.php
----------------------------
<?php
phpinfo();
?>
-----------------------------

#check lamp server working or not
http://ipaddress/info.php
