#!/bin/bash

echo "run deploy phpmyadmin"

cd /home/vagrant

if [ -e "pma" ]
then
  cd pma
  git pull
else
  git clone https://github.com/i-MSCP/phpmyadmin.git pma
fi



