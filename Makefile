TAG=ikaraszi/composer
VERSIONS=latest php-7.4 fpm ci docker-compose

.PHONY: latest
latest:
	docker build --pull -t $(TAG):latest .

.PHONY: php-7.4
php-7.4:
	docker build --pull -t $(TAG):php-7.4 php-7.4

.PHONY: fpm
fpm:
	docker build --pull -t $(TAG):fpm fpm

.PHONY: ci
ci: php-7.4
ci:
	docker build --pull -t $(TAG):ci ci

.PHONY: docker-compose
docker-compose: latest
docker-compose:
	docker build --pull -t $(TAG):docker-compose docker-compose

all: latest php-7.4 fpm ci docker-compose

.PHONY: push
push: all
push:
	$(foreach VERSION,$(VERSIONS),docker push $(TAG):$(VERSION);)
