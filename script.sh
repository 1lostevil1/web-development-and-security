#!/bin/bash

# Создаём новую директорию
DEST_DIR="./backup_directory"
mkdir -p "$DEST_DIR"

# Проверяем, существует ли файл ~/.bashrc
if [ -f ~/.bashrc ]; then
  # Копируем файл
  if cp ~/.bashrc "$DEST_DIR/.bashrc.backup"; then
    echo "Файл ~/.bashrc успешно скопирован в $DEST_DIR/.bashrc.backup"
  else
    echo "Ошибка: не удалось скопировать файл ~/.bashrc."
  fi
else
  echo "Ошибка: файл ~/.bashrc не найден."
fi