#!/bin/bash

read -p "Введите имя нового пользователя: " username

read -p "Создать новую группу (y/n)? " create_group

if [ "$create_group" == "y" ]; then
    read -p "Введите имя новой группы: " groupname
    sudo groupadd "$groupname"
    sudo useradd -m -g "$groupname" "$username"
    echo "Пользователь $username и группа $groupname созданы."
else
    read -p "Введите имя существующей группы: " groupname
    sudo useradd -m -g "$groupname" "$username"
    echo "Пользователь $username добавлен в группу $groupname."
fi
