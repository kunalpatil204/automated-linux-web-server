#!/bin/bash

echo "🔍 Validating services..."

systemctl is-active nginx
systemctl is-active php8.3-fpm

echo "🌐 Server IP:"
hostname -I
