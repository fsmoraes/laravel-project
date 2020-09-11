## Docker Hub

[fsmoraes/laravel-project:1.0](https://hub.docker.com/layers/fsmoraes/laravel-project/1.0/images/sha256-6cb99161effbd48988ff8501e0861e0a78a45b3ae64d1b7d721609f053897290?context=repo)

## Running Docker Compose with local Dockerfile

    1. docker-compose up -d
    2. docker exec -it app bash
        2.1 composer install
        2.2 php artisan key:generate
        2.3 php artisan migrate
    3. Access http://localhost:8080 


## Running Docker Compose with Docker Hub image

    1. Change app service in docker-compose.yml
        1.1 Replace "build: ." for "image: fsmoraes/laravel-project:1.0"
    2. Access http://localhost:8080 
