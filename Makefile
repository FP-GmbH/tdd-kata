say_hello:
	echo "Hello World"
build_docker_image:
	docker build -t tdd-container .
create_env_file:
	echo "GIT_USER_NAME=$(shell git config --global user.name)" > .env
	echo "GIT_USER_EMAIL=$(shell git config --global user.email)" >> .env
build:
	make create_env_file
	make build_docker_image
run:
	docker compose up -d

mob_start:
	docker compose exec app "mob start"
mob_next:
	docker compose exec app "mob next"
mob_done:
	docker compose exec app "mob done"