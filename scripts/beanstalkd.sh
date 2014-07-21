#!/bin/bash

echo "run deploy beanstalkd gui"

cd /home/vagrant
if [ -e "beanstalkd.gui" ]
then
  cd beanstalkd.gui
  composer update
else
  composer create-project --no-interaction ptrofimov/beanstalk_console -s dev /home/vagrant/beanstalkd.gui
fi

echo "add beanstalkd to hosts"
echo '127.0.0.1 beanstalkd.gui' | sudo tee -a /etc/hosts
