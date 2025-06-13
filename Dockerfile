FROM php:8.2-apache

# Download extensions om php te gebruiken met mysql
RUN docker-php-ext-install pdo pdo_mysql

# Zorgt ervoor dat de Apache eigenaar wordt van alle bestanden in /var/www/html
RUN chown -R www-data:www-data /var/www/html

# Start rewrite module voor Apache
RUN a2enmod rewrite

# Vervangt apache configuratie bestand
RUN sed -i 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf

EXPOSE 80
