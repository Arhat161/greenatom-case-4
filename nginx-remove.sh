#!/bin/bash

sudo apt-get remove nginx*
sudo rm -rf /etc/nginx/ /usr/sbin/nginx /usr/share/man/man1/nginx.1.gz
sudo apt-get --purge autoremove nginx && sudo dpkg --purge nginx
sudo apt-get -o DPkg::options::=--force-confmiss --reinstall install nginx
