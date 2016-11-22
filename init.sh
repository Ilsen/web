#!/bin/bash

mkdir /home/box/web/etc -p
mkdir /home/box/web/public/img/ -p
mkdir /home/box/web/public/css
mkdir /home/box/web/public/js
mkdir /home/box/web/uploads
apt-get install nginx
apt-get install gunicorn
rm /etc/nginx/sites-enabled/default
cp nginx.conf /home/box/web/etc/
cp hello.py /home/box/web/etc/
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
ln -s /home/box/web/etc/django.py /etc/gunicorn.d/django.py
service nginx restart
/etc/init.d/gunicorn restart
gunicorn -b 0.0.0.0:8080 hello:app &
