FROM richarvey/nginx-php-fpm:latest

# Install app dependencies
RUN composer install --no-interaction --prefer-dist \
    composer cs \
    composer test \
    composer install --no-dev --prefer-dist
