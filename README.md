# tdd-kata
regular kata to learn and improve test driven development skills

## Installation
1. Clone the repository
2. Build the project
   * either `make build` (<- recommended)
   * or `docker-compose build`
3. configure .env

## Usage
1. Create a branch for your kata `git checkout -b kata/your-kata-name`
2. Run the project `docker compose run app bash`

### Start Mob Session
1. Start the mob session `mob start --create`
2. Write a failing test
3. Run the test `npm test`
4. Pass to the next person by running `mob next`

### Join Mob Session
1. checkout the same branch as the mob session `git checkout kata/your-kata-name`
2. overtake the mob session `mob start`
3. Implement against the test
4. Run the test `npm test`
5. Write a failing test
6. Pass to the next person by running `mob next`
