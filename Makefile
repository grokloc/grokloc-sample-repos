# docker settings
DOCKER       	= docker
DOCKER_RUN   	= $(DOCKER) run --rm -it
DOCKERFILE      = Dockerfile
IMG      	= grokloc/grokloc-sample-repos:latest
CWD          	= $(shell pwd)
BASE         	= /repos

# base image
.PHONY: docker
docker:
	$(DOCKER) build . -f $(DOCKERFILE) -t $(IMG)

.PHONY: docker-force
docker-force:
	$(DOCKER) pull bitnami/git:latest
	$(DOCKER) build --no-cache . -f $(DOCKERFILE) -t $(IMG)

.PHONY: docker-push
docker-push:
	$(DOCKER) push $(IMG)

.PHONY: docker-pull
docker-pull:
	$(DOCKER) pull $(IMG)
	$(DOCKER) system prune -f
	$(DOCKER) system prune -f
	$(DOCKER) system prune -f
