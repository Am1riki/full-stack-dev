#!/bin/bash

backup_dir="$HOME/backup_configs_$(date +%Y%m%d)"

filepath = "dev-ops-101"

if [ -f "$filepath" ]; then
    mkdir -p "$backup_dir"
    cp "$filepath" "$backup_dir"
    echo "Файл $filepath скопирован в $backup_dir."
else
    echo "Ошибка: Файл $filepath не найден."
fi
