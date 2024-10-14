# tdd-kata
regular kata to learn and improve test driven development skills

## Requirements
- make (<- recommended)
- docker

## Installation
1. Clone the repository
2. Build the project
   * either `make build` (<- recommended)
   * or `docker-compose build`
3. (optional) configure .env

## Usage

### Start Mob Session
1. Start the mob session `make mob_new`
2. Start the container `docker compose run --rm app bash`
3. Write a failing test
4. Run the test `npm test`
5. Pass to the next person by running `mob next`

### Join Mob Session
1. Enter the mob session `make mob_join`
2. overtake the mob session `mob start`
3. Implement against the test
4. Run the test `npm test`
5. Write a failing test
6. Pass to the next person by running `mob next`
7. Next person can start at step 2
