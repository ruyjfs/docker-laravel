#!/bin/sh

set -e
echo "[ ****************** ] Back - Starting Endpoint of Application"
if ! [ -f ".env" ]; then
    echo ".env not found - Copy file .env.example to .env..."
    cp .env.docker.example .env
fi
if ! [ -d "./vendor" ]; then
    echo "[ ****** ] Vendor not found - Compose install..."
    composer install --ignore-platform-reqs --verbose
    echo "[ ************ ] Generating dependencies of Laravel with Artisan..."
    echo "[ ****** ] Key Generate"
    php artisan migrate
    echo "[ ****** ] Key Generate"
    php artisan key:generate
    echo "[ ****** ] Laraout Generate"
    php artisan laroute:generate
    echo "[ ****** ] Passport"
    php artisan passport:install
    echo "[ ****** ] Db Seed"
    php artisan db:seed
    echo "[ ****** ] Storage Link"
    php artisan storage:link
    # php artisan api:generate --routePrefix="api/*"
fi
echo "[ ****************** ] Back - Ending Endpoint of Application "
exec "$@"
