# Composer Docker Image

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ikaraszi/composer)](https://hub.docker.com/r/ikaraszi/composer/builds)
[![Docker pulls](https://img.shields.io/docker/pulls/ikaraszi/composer.svg)](https://hub.docker.com/r/ikaraszi/composer/)

## Supported tags and respective Dockerfile links

| Tag                | Base               | Features                                                               | Image size                                         |
| ------------------ | ------------------ | ---------------------------------------------------------------------- | -------------------------------------------------- |
| [`latest`]         | [`composer:2`]     | memcached, xdebug                                                      | ![Docker Image Size (tag)][shields-latest]         |
| [`ci`]             | [`php:7.4-alpine`] | gd, intl, mysqli, pdo_mysql, memcached, redis, xdebug, zip, [wait-for] | ![Docker Image Size (tag)][shields-ci]             |
| [`docker-compose`] | [`composer:2`]     | memcached, xdebug, docker-compose                                      | ![Docker Image Size (tag)][shields-docker-compose] |
| [`php-7.4`]        | [`php:7.4-alpine`] |                                                                        | ![Docker Image Size (tag)][shields-php-7.4]        |

[latest]: https://github.com/raszi/docker-composer/blob/master/Dockerfile
[ci]: https://github.com/raszi/docker-composer/blob/master/ci/Dockerfile
[docker-compose]: https://github.com/raszi/docker-composer/blob/master/docker-compose/Dockerfile
[php-7.4]: https://github.com/raszi/docker-composer/blob/master/php-7.4/Dockerfile
[composer:2]: https://hub.docker.com/_/composer
[php:7.4-alpine]: https://hub.docker.com/_/php
[shields-latest]: https://img.shields.io/docker/image-size/ikaraszi/composer/latest
[shields-ci]: https://img.shields.io/docker/image-size/ikaraszi/composer/ci
[shields-docker-compose]: https://img.shields.io/docker/image-size/ikaraszi/composer/docker-compose
[shields-php-7.4]: https://img.shields.io/docker/image-size/ikaraszi/composer/php-7.4
[wait-for]: https://github.com/eficode/wait-for
