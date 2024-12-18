#!/bin/bash

# Определяем путь к новой директории для резервных копий
BACKUP_DIR="./backup_directory"

# Создаем новую директорию, если она не существует
mkdir -p "$BACKUP_DIR"

# Определяем путь к исходному файлу
SOURCE_FILE="$HOME/.bashrc"

# Определяем путь к конечному файлу с расширением .backup
BACKUP_FILE="$BACKUP_DIR/.bashrc.backup"

# Проверяем существование исходного файла
if [ -f "$SOURCE_FILE" ]; then
  # Копируем файл в новую директорию с новым расширением
  cp "$SOURCE_FILE" "$BACKUP_FILE"

  # Проверяем успешность операции копирования
  if [ $? -eq 0 ]; then
    echo "Файл $SOURCE_FILE успешно скопирован в $BACKUP_FILE"
  else
    echo "Ошибка: не удалось скопировать файл $SOURCE_FILE."
  fi
else
  echo "Ошибка: файл $SOURCE_FILE не найден."
fi