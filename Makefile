TAG=ikaraszi/composer
VERSIONS=latest php-7.4 fpm ci docker-compose

.PHONY: latest
latest:
	docker build -t $(TAG):latest .

.PHONY: php-7.4
php-7.4:
	docker build -t $(TAG):php-7.4 php-7.4

.PHONY: fpm
fpm:
	docker build -t $(TAG):fpm fpm

.PHONY: ci
ci: php-7.4
ci:
	docker build -t $(TAG):ci ci

.PHONY: docker-compose
docker-compose: latest
docker-compose:
	docker build -t $(TAG):docker-compose docker-compose

all: latest php-7.4 fpm ci docker-compose

.PHONY: push
push: all
push:
	$(foreach VERSION,$(VERSIONS),docker push $(TAG):$(VERSION);)
