all: build run

build:
	docker build -t ndtest -f ./Dockerfile .

run:
	docker run -it --runtime nvidia ndtest

