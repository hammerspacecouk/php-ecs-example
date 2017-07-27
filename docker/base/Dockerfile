FROM php:7.1-fpm

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV PATH=$PATH:vendor/bin

# Install only what is needed
RUN apt-get update && apt-get install -y --no-install-recommends \
      curl \
      git \
      zlib1g-dev

RUN rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
