FROM composer:2.3.5

RUN apk add --no-cache --virtual .extension-run-deps \
    libmemcached-libs

# hadolint ignore=SC2086
RUN apk add --no-cache --virtual .extension-build-deps \
    $PHPIZE_DEPS \
    libmemcached-dev \
    zlib-dev && \
    pecl install memcached && \
    docker-php-ext-enable memcached && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    rm -rf /tmp/* && \
    apk del .extension-build-deps
