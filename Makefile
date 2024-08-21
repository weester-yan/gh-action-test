pull:
	git pull origin main

build:
	docker build -t connectai/my-app -f docker/Dockerfile  .

install:
	docker compose up -d
