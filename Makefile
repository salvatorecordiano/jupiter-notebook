.PHONY: start

DOCKER_IMAGE_PREFIX=jupyter/datascience-notebook
DOCKER_IMAGE_TAG=2023-05-15

start:
	docker run --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v `pwd`/notebooks:/home/jovyan/work ${DOCKER_IMAGE_PREFIX}:${DOCKER_IMAGE_TAG}

