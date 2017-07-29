FROM richarvey/nginx-php-fpm:latest

# Install OS dependencies
RUN apt-get update && \
    apt-get install curl nano && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install app dependencies
RUN composer install --no-interaction --prefer-dist \
    composer cs \
    composer test \
    composer install --no-dev --prefer-dist
