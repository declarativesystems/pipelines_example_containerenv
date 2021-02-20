image:
	buildah bud \
		-f Dockerfile \
        --squash \
        -t declarativesystems.jfrog.io/docker-local/example:example

push: image
	podman push declarativesystems.jfrog.io/docker-local/example:example

.PHONY: image