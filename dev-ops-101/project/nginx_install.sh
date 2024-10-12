#!/bin/bash

echo "Установка Nginx..."
sudo apt install nginx -y

echo "Запуск Nginx..."
sudo systemctl start nginx

echo "Проверка статуса Nginx..."
sudo systemctl status nginx | grep "active (running)"

if systemctl is-active --quiet nginx; then
    echo "Nginx установлен и работает."
else
    echo "Ошибка: Nginx не работает."
fi
