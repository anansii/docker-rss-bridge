IMAGENAME=rss-bridge

test: build
	docker run -it --rm $(IMAGENAME)

build:
	docker build -t $(IMAGENAME) .

