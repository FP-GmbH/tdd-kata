build_docker_image:
	docker build -t tdd-kata/node-jest-ts:0.1.0 .
create_env_file:
	echo "GIT_USER_NAME=$(shell git config --global user.name)" > .env
	echo "GIT_USER_EMAIL=$(shell git config --global user.email)" >> .env
build:
	make create_env_file
	make build_docker_image
	docker compose run --rm app "npm install"
git_branch:
	git checkout -b $(shell date +%Y%m%d) || git checkout $(shell date +%Y%m%d)


mob_new:
	make git_branch
	make mob_start
mob_start:
	docker compose run --rm app "mob start && exit"
mob_join:
	make git_branch
	docker compose run --rm app "mob start"
mob_next:
	docker compose run --rm app "mob next"
mob_done:
	docker compose run --rm app "mob done"