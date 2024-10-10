say_hello:
	echo "Hello World"
build_docker_image:
	docker build -t tdd-container .
build:
	make build_docker_image
run:
	docker compose up -d
