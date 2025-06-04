FROM php:8.4-fpm

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash

RUN apt-get update && apt-get install -y symfony-cli

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN adduser www-data www-data && \
    chown www-data:www-data -R /var/www/html

USER www-data

WORKDIR /var/www/html

CMD ["php-fpm"]