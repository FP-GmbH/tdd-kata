# Description: Makefile for TDD Kata

# Build the Docker image
build_docker_image:
	docker build -t tdd-kata/node-jest-ts:0.1.0 .

# Make the git user of the container the same as the host
create_env_file:
	echo "GIT_USER_NAME=$(shell git config --global user.name)" > .env
	echo "GIT_USER_EMAIL=$(shell git config --global user.email)" >> .env

# Git Branch Schema for Mob Programming Sessions (YYYYMMDD)
git_branch:
	git checkout -b $(shell date +%Y%m%d) || git checkout $(shell date +%Y%m%d)

# Configuration, Installation, Docker Build
build:
	make create_env_file
	make build_docker_image
	docker compose run --rm app "npm install"


#### MOB Programming ####
# Start a very new Mob Programming Session on a custom branch
mob_new:
	make git_branch
	make mob_start
# initialize the session on the current branch
mob_start:
	docker compose run --rm app "mob start --create --include-uncommitted-changes"
# join the session on today's branch
mob_join:
	make git_branch
	docker compose run --rm app "mob start --join"
# next person in the session
mob_next:
	docker compose run --rm app "mob next"
# finish the session, squash and merge everything to today's branch
mob_done:
	docker compose run --rm app "mob done"