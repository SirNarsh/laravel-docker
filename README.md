This repo updates docker image https://hub.docker.com/r/sirnarsh/laravel-docker

Purpose is to run a laravel app inside a docker container


### Usage: 
1. Copy docker-compose.yml to the root directory of your laravel project
2. Run `docker-compose up`

### Other useful commands for laravel

**Composer install through docker**  

`docker run --rm -v $(pwd):/app composer install`


**Artisan commands (example: php artisan migrate)**

`docker-compose run --rm --entrypoint 'php artisan migrate' laravel`

 