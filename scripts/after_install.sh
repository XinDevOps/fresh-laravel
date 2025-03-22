#!/bin/bash
cd /var/www/fresh-laravel

# Install Composer dependencies
/usr/local/bin/composer install --no-dev --prefer-dist --optimize-autoloader

# Copy .env.example to .env if .env doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Generate Laravel app key if not set (adjust if your .env already has a key)
php artisan key:generate --force

# Set proper permissions (adjust user and group as necessary)
chown -R ec2-user:apache /var/www/fresh-laravel
chmod -R 775 storage bootstrap/cache
