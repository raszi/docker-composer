FROM composer:2 AS composer

FROM php:fpm-alpine

WORKDIR /app

RUN set -eux; \
  apk add --no-cache --virtual .composer-rundeps \
    bash \
    coreutils \
    git \
    make \
    mercurial \
    openssh-client \
    patch \
    subversion \
    tini \
    unzip \
    zip

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=composer /docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["composer"]
