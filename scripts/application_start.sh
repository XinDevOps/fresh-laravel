#!/bin/bash
# Run migrations, clear caches, and restart services if needed
cd /var/www/fresh-laravel
# php artisan migrate --force
php artisan cache:clear
php artisan config:clear
# Optionally, restart your web server
sudo systemctl restart httpd   # For Apache (or use nginx service if using Nginx)
