# Version: 1.1

# Base Image
FROM php:fpm

ARG user

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Update packages
RUN apt-get update && apt-get upgrade -y

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# Install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get install -y nodejs

# Update npm
RUN npm install -g npm@latest

# Install packages
RUN apt-get install -y libzip-dev libpng-dev libcurl4-openssl-dev unzip zip

# Install extensions
RUN docker-php-ext-install zip gd curl mysqli pdo_mysql

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u 1000 -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

USER $user