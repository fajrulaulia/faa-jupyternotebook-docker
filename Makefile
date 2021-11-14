build-direct:
	docker build -t faawidia/faa-jupyter-notebook .
run:
	docker-compose up

log:
	docker logs faa-jupyter-notebook -f

exec:
	docker exec -it faa-jupyter-notebook /bin/sh

build:build-direct
	docker-compose up

remove-image:
	docker image rm -f faawidia/faa-jupyter-notebook:latest