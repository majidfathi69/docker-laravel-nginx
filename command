git clone --single-branch --branch 7.x https://github.com/laravel/laravel.git laravel-app
cd laravel-app
docker run --rm -v $(pwd):/app composer install --ignore-platform-reqs
cd ..
sudo chown -R $USER:$USER laravel-app
touch laravel-app/docker-compose.yml
touch laravel-app/Dockerfile
mkdir laravel-app/php
touch laravel-app/php/local.ini
mkdir -p laravel-app/nginx/conf.d
touch laravel-app/nginx/conf.d/app.conf
# mkdir laravel-app/mysql
# touch laravel-app/mysql/my.cnf
cd laravel-app
cp .env.example .env
