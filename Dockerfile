FROM richarvey/nginx-php-fpm:latest

# Put the code in the right place
RUN rm -Rf /var/www/html/*
ADD . /var/www/html/

ARG SAMPLE_ENV_VALUE='hello hammerspace'
ENV SAMPLE_ENV_VALUE ${SAMPLE_ENV_VALUE}

# Install app dependencies and test
RUN composer install --no-interaction --prefer-dist
RUN composer cs
RUN composer test
RUN composer install --no-dev --prefer-dist
