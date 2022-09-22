# Version: 1.0

# Base Image
FROM php:8.1-fpm

# Update packages
RUN apt-get clean && apt-get update && apt-get upgrade -y

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# Install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs


# Install packages
RUN apt-get install -y libzip-dev libpng-dev libcurl4-openssl-dev unzip zip

# Install extensions
RUN docker-php-ext-install zip gd curl mysqli pdo_mysql