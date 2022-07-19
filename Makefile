.PHONY: image

IMAGE=registry.stadiumgoods.com/ruby-public/ruby-interview-time-logger:ruby3.0.2-1
image:
	docker build -t $(IMAGE) .
	docker push $(IMAGE)
