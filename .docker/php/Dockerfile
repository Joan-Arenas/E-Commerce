# ./docker/php/Dockerfile
FROM php:7.3-fpm


RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip


RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

ENV EXT_APCU_VERSION=5.1.17

RUN docker-php-source extract \
    # ext-apcu
    && mkdir -p /usr/src/php/ext/apcu \
    && curl -fsSL https://github.com/krakjoe/apcu/archive/v$EXT_APCU_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/apcu --strip 1 \
    && docker-php-ext-install apcu \
    # cleanup
    && docker-php-source delete

RUN apt-get update \
    && apt-get install -y \
        librabbitmq-dev \
        libssh-dev \
    && docker-php-ext-install \
        bcmath \
        sockets \
    && pecl install amqp redis \
    && docker-php-ext-enable amqp redis

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

RUN rm -rf /var/lib/apt/lists/* && apt update
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install -y nodejs

RUN apt-get update && \
    apt-get install -y git

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - \
echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list

RUN npm install --global yarn

RUN docker-php-ext-install pcntl

RUN chown -R www-data:www-data /var/www && \
    chown www-data:www-data /var/www && \
    usermod -u 1000 www-data

RUN PATH=$PATH:/var/www/vendor/bin:bin

USER www-data

RUN mkdir /var/www/e-commerce

WORKDIR /var/www/e-commerce
