#!/bin/sh
composer install --ignore-platform-req=ext-zip

# php artisan install:api
php artisan migrate
php artisan key:generate
php artisan serve --host=0.0.0.0 --port=10000
