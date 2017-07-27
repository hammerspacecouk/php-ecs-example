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
RUN rm -rf /var/lib/apt/lists/*

# Install nginx

# Remove default nginx
RUN rm /usr/share/nginx/html/*

# Copy all of our nginx configurations
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

# Replace nginx without own config

# When do we run composer, tests and cache warm

# Copy our optimized build into the web folder that we point to in default.conf
COPY . /var/www/

# Contents of app will change after build?

# Daemon Off otherwise, Docker will drop when the main process is done making child ones
CMD ["nginx", "-g", "daemon off;"]