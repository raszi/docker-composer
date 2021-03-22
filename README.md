# Composer Docker Image

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ikaraszi/composer)](https://hub.docker.com/r/ikaraszi/composer/builds)
[![Docker pulls](https://img.shields.io/docker/pulls/ikaraszi/composer.svg)](https://hub.docker.com/r/ikaraszi/composer/)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/raszi/docker-composer/CI/master)

## Supported tags and respective Dockerfile links

| Tag                                    | Base                           | Features                                                                     | Image size                                         |
| -------------------------------------- | ------------------------------ | ---------------------------------------------------------------------------- | -------------------------------------------------- |
| [`latest`][latest-tag]                 | [`composer:2`][composer-image] | memcached, xdebug                                                            | ![Docker Image Size (tag)][shields-latest]         |
| [`ci`][ci-tag]                         | [`php:7.4-alpine`][php-image]  | gd, intl, mysqli, pdo_mysql, memcached, redis, soap, xdebug, zip, [wait-for] | ![Docker Image Size (tag)][shields-ci]             |
| [`docker-compose`][docker-compose-tag] | [`composer:2`][composer-image] | memcached, xdebug, [docker-compose]                                          | ![Docker Image Size (tag)][shields-docker-compose] |
| [`fpm`][fpm-tag]                       | [`php:8-fpm`][php-image]       |                                                                              | ![Docker Image Size (tag)][shields-fpm]            |
| [`php-7.4`][php-7.4-tag]               | [`php:7.4-alpine`][php-image]  |                                                                              | ![Docker Image Size (tag)][shields-php-7.4]        |

[latest-tag]: https://github.com/raszi/docker-composer/blob/master/Dockerfile
[ci-tag]: https://github.com/raszi/docker-composer/blob/master/ci/Dockerfile
[docker-compose-tag]: https://github.com/raszi/docker-composer/blob/master/docker-compose/Dockerfile
[fpm-tag]: https://github.com/raszi/docker-composer/blob/master/fpm/Dockerfile
[php-7.4-tag]: https://github.com/raszi/docker-composer/blob/master/php-7.4/Dockerfile
[composer-image]: https://hub.docker.com/_/composer
[php-image]: https://hub.docker.com/_/php
[php-image]: https://hub.docker.com/_/php
[docker-compose]: https://docs.docker.com/compose/
[shields-latest]: https://img.shields.io/docker/image-size/ikaraszi/composer/latest
[shields-ci]: https://img.shields.io/docker/image-size/ikaraszi/composer/ci
[shields-docker-compose]: https://img.shields.io/docker/image-size/ikaraszi/composer/docker-compose
[shields-fpm]: https://img.shields.io/docker/image-size/ikaraszi/composer/fpm
[shields-php-7.4]: https://img.shields.io/docker/image-size/ikaraszi/composer/php-7.4
[wait-for]: https://github.com/eficode/wait-for
