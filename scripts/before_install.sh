#!/bin/bash
# Backup the current Laravel app directory (if needed)
if [ -d /var/www/fresh-laravel ]; then
  cp -R /var/www/fresh-laravel /var/www/fresh-laravel-backup_$(date +%Y%m%d%H%M%S)
fi
