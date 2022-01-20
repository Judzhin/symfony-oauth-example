#!/bin/bash

echo "[`date +%F-%H:%M:%S`]"

echo "[001] - Make directory for keys"
mkdir -p /var/www/html/var/oauth

echo "[002] - Generate private key"
openssl genrsa -out /var/www/html/var/oauth/private.key 2048

echo "[003] - Make public key"
openssl rsa -in /var/www/html/var/oauth/private.key -pubout -out /var/www/html/var/oauth/public.key

echo "[004] - Set permission for keys"
chmod 644 /var/www/html/var/oauth/private.key /var/www/html/var/oauth/public.key

echo "[005] - Script is finished!"