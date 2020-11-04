FROM composer:2

RUN apk add --no-cache --virtual .extension-run-deps \
     libmemcached-libs

RUN apk add --no-cache --virtual .extension-build-deps \
    $PHPIZE_DEPS \
    libmemcached-dev \
    zlib-dev && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    pecl install memcached && \
    docker-php-ext-enable memcached && \
    rm -rf /tmp/* && \
    apk del .extension-build-deps