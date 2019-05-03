run: build
	docker run --rm --detach --publish 49000:8080 --name jenkins managedkaos/jenkins:latest

build:
	docker build . -t managedkaos/jenkins:latest

stop clean:
	docker stop $(shell docker ps --quiet --filter name=jenkins)

.PHONY: build run stop clean
