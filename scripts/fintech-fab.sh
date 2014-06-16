#!/bin/bash

echo "run deploy fintech-fab.dev"

echo "go to /home/vagrant/fintech-fab.dev"
cd /home/vagrant/fintech-fab.dev

echo "command: composer install"
composer install

echo "command: artisan dump-autoload"
php artisan dump-autoload

echo "command: ide-helper:generate"
php artisan ide-helper:generate

echo "add fintech-fab.dev to hosts"
echo '127.0.0.1 fintech-fab.dev' | sudo tee -a /etc/hosts
