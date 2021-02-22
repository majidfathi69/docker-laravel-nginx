git clone --single-branch --branch 7.x https://github.com/laravel/laravel.git laravel-app
cd laravel-app
docker run --rm -v $(pwd):/app composer install --ignore-platform-reqs

sudo chown -R $USER:$USER .
touch docker-compose.yml
touch Dockerfile
mkdir php
touch php/local.ini
mkdir -p nginx/conf.d
touch nginx/conf.d/app.conf

cp .env.example .env

#docker-compose up -d
#docker-compose down
#touch mysql/my.cnf

#docker-compose exec app php artisan key:generate
#docker-compose exec app php artisan config:cache

#if env problrm
#docker-compose exec app php artisan config:cache
#docker-compose exec app php artisan config:clear
#docker-compose exec app php artisan cache:clear
