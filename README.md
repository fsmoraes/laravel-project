## Docker Hub

Go image: [fsmoraes/codeeducation](https://hub.docker.com/layers/fsmoraes/codeeducation/latest/images/sha256-c697d25f11c2cffc04ae8f85539f4b09db7b91e99883cc36dff9c471df192dcd?context=repo)

Laravel image: [fsmoraes/laravel-project:2.0](https://hub.docker.com/layers/fsmoraes/laravel-project/2.0/images/sha256-a66e6a5a2490bbe8d77ba4b35fde6bcaa381a58b9ea93c881fe3ca21c43e8d24?context=repo)

## Running Docker Compose

    1. docker-compose up -d
    2. docker exec -it app bash
        2.1 composer install
        2.2 cp .env.example .env
        2.3 php artisan key:generate
        2.4 php artisan migrate
    3. Access http://localhost:8000 
