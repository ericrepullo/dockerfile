FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y apache2 && apt-get install -y unzip && apt-get install -y php && apt-get install -y wget
RUN a2enmod rewrite
RUN apt-get install -y libapache2-mod-php php-cli php-mysql php-zip php-ldap php-curl php-gd php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap php-intl curl
RUN servie apache2 restart
RUN cd /var/www/html
RUN rm index.html
RUN wget https://download.prestashop.com/download/releases/prestashop_1.7.4.4.zip
RUN cd /var/www/html
RUN unzip prestashop.1.7.4.4.zip
RUN chown -R www-data:www-data /var/html
RUN chmod -R 755 /var/www/html
EXPOSE 8080 80 21 22
