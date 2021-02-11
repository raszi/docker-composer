FROM ikaraszi/composer:php-7.4

RUN apk add --no-cache --virtual .extension-run-deps \
    icu-libs \
    libpng \
    libmemcached-libs \
    libzip

RUN apk add --no-cache --virtual .extension-build-deps \
    $PHPIZE_DEPS \
    icu-dev \
    libpng-dev \
    libmemcached-dev \
    libzip-dev \
    zlib-dev && \
    docker-php-ext-install gd intl mysqli pdo_mysql zip && \
    pecl install memcached && \
    docker-php-ext-enable memcached && \
    pecl install redis && \
    docker-php-ext-enable redis && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    rm -rf /tmp/* && \
    apk del .extension-build-deps

RUN curl -o /usr/local/bin/wait-for "https://raw.githubusercontent.com/eficode/wait-for/v2.0.0/wait-for" && \
    chmod +x /usr/local/bin/wait-for
