IMAGE=sillycat.gradio.starter
TAG=latest
NAME=sillycat.gradio.starter
REPOSITORY=docker.io
STAGE=stage


docker-context:

build: docker-context
		docker build --tag $(REPOSITORY)/$(IMAGE):$(TAG) --build-arg STAGE=${STAGE} .

run:
		docker run -d -p 8081:9527 \
		--name $(NAME) $(REPOSITORY)/$(IMAGE):$(TAG)

clean:
		docker stop $(NAME)
		docker rm $(NAME)
