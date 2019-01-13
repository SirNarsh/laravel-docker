This repo updates docker images:
sirnarsh/laravel-docker https://hub.docker.com/r/sirnarsh/laravel-docker
sirnarsh/larvel-cli-docker https://hub.docker.com/r/sirnarsh/laravel-cli-docker

Purpose is to run a laravel app inside a docker container, either with apache, or cli version for background queue processing service


### Usage: 
1. Copy docker-compose.yml to the root directory of your laravel project
2. Run `docker-compose up`

### Other useful commands for laravel

**Composer install through docker**  

`docker run --rm -v $(pwd):/app composer install`


**Artisan commands (example: php artisan migrate)**

`docker-compose run --rm --entrypoint 'php artisan migrate' laravel`

 
