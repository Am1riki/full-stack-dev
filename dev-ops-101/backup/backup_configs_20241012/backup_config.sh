#!/bin/bash

backup_dir="/home/dev-ops-101/backup/backup_configs_$(date +%Y%m%d)"

mkdir "$backup_dir"

cp -r ./* "$backup_dir"

echo "Резервное копирование текущей директории выполнено. Файлы скопированы в $backup_dir."