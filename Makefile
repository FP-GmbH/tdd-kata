say_hello:
	echo "Hello World"
build_docker_image:
	docker build -t tdd-container .
build:
	make build_docker_image
run:
	docker compose up -d

mob_start:
	docker compose exec app "mob start"
mob_next:
	docker compose exec app "mob next"
mob_done:
	docker compose exec app "mob done"