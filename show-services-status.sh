#!/bin/bash

_SERVICES="nginx named fail2ban mariadb exim dovecot firewalld ntpd php-fpm memcached "

for i in $_SERVICES; do
	echo -e "$i $(systemctl status $i | grep "Active")"
done