Preinstalled with laravel dependencies & php-composer

This repo updates docker images under sirnarsh/laravel-docker  https://hub.docker.com/r/sirnarsh/laravel-docker
:latest by default using php-apache
:cli-latest uses bare php
:fpm-latest uses php-fpm image



### Usage: 
1. Copy docker-compose.yml to the root directory of your laravel project
2. Run `docker-compose up`

### Other useful commands for laravel

**Composer install through docker**  

`docker run --rm -v $(pwd):/app composer install`


**Artisan commands (example: php artisan migrate)**

`docker-compose run --rm --entrypoint 'php artisan migrate' laravel`

 
