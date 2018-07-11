# Docker Laravel Example

## Starting with Docker
```
docker-compose up --build
```
For run yarn on developper machine
```
sudo apt-get install libpng-dev
sudo npm install -g pngquant-bin
yarn install
yarn watch
```
### Extra commands
To enter in container
```
docker exec -it laravel-back
```
To use tinker in container back
```
docker exec -it laravel-back php artisan tinker
```
To generate routes in laravel
```
docker exec laravel-back php artisan laroute:generate
```
To run composer install
```
docker exec laravel-back composer install --ignore-platform-reqs --verbose
```

## To run indepedent container

## Containers docker

# laravel-db
```
docker run --name laravel-db -p 5432:5432 -e POSTGRES_DB=laravel -e POSTGRES_USER=root -e POSTGRES_PASSWORD= -d postgres
```
# laravel-back
```
docker run -it -v /var/www:/var/www -p 80:80 --name laravel-back --link laravel-db:postgres -link alpine
```
In container back
```
apk update && apk upgrade && apk add --no-cache git curl openssl \
    php7 php7-fpm php7-opcache php7-json php7-phar php7-iconv php7-openssl php7-zlib php7-simplexml php7-tokenizer php7-xmlwriter php7-dom php7-mbstring \
    php7-pdo_pgsql php7-session php7-ctype php7-curl php7-dom php7-mbstring php7-gd php7-fileinfo php7-pcntl php7-posix php7-xml
```
### Composer
```
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer && chmod +x /usr/local/bin/composer
```
### laravel
```
cd /var/www && composer install --ignore-platform-reqs
```
```
php artisan key:generate
```
```
php artisan laroute:generate
```
```
php artisan send:invites
```
```
php artisan serve --host 0.0.0.0 --port 80
```
# laravel-front
```
docker run -it -v /var/www:/var/www -p 4000:4000 --name laravel-front alpine
apk add --update --upgrade git nodejs nodejs-npm && npm i -g yarn
cd /var/www && npm && npm run watch
```
