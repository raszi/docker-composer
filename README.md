# Composer Docker Image

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ikaraszi/composer)](https://hub.docker.com/r/ikaraszi/composer/builds)
[![Docker pulls](https://img.shields.io/docker/pulls/ikaraszi/composer.svg)](https://hub.docker.com/r/ikaraszi/composer/)

## Supported tags and respective Dockerfile links

| Tag                                                                                                | Base                                              | Features                                              | Image size                                                                                            |
| -------------------------------------------------------------------------------------------------- | ------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| [`latest`](https://github.com/raszi/docker-composer/blob/master/Dockerfile)                        | [`composer:2`](https://hub.docker.com/_/composer) | memcached, xdebug                                     | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/ikaraszi/composer/latest)         |
| [`ci`](https://github.com/raszi/docker-composer/blob/master/ci/Dockerfile)                         | [`php:7.4-alpine`](https://hub.docker.com/_/php)  | gd, intl, mysqli, pdo_mysql, memcached, redis, xdebug | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/ikaraszi/composer/ci)             |
| [`docker-compose`](https://github.com/raszi/docker-composer/blob/master/docker-compose/Dockerfile) | [`composer:2`](https://hub.docker.com/_/composer) | memcached, xdebug, docker-compose                     | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/ikaraszi/composer/docker-compose) |
| [`php-7.4`](https://github.com/raszi/docker-composer/blob/master/php-7.4/Dockerfile)               | [`php:7.4-alpine`](https://hub.docker.com/_/php)  |                                                       | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/ikaraszi/composer/php-7.4)        |
