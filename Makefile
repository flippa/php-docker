PROJECT     ?= quay.io/flippa/php
TAG         ?= 5.5.14
IMAGE       = $(PROJECT):$(TAG)
LATEST      = $(PROJECT):latest
DOCKEROPTS  ?=

build: Dockerfile
	docker build --rm -t $(IMAGE) .
	docker tag -f $(IMAGE) $(LATEST)

push:
	docker push $(IMAGE)
	docker push $(LATEST)
