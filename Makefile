IMAGE:=ibmosquito/ndtest:1.0.0
NAME:=ndtest

all: build run

build:
	docker build -t $(IMAGE) -f ./Dockerfile .

dev:
	-docker rm -f $(NAME) 2>/dev/null || :
	docker run -it --name $(NAME) -v `pwd`:/outside $(IMAGE) /bin/bash

run:
	-docker rm -f $(NAME) 2>/dev/null || :
	docker run -it --runtime nvidia --name $(NAME) $(IMAGE)

push:
	docker push $(IMAGE)

