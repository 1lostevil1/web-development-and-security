# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Устанавливаем необходимые пакеты
RUN apt-get update && apt-get install -y bash

# Копируем скрипт в контейнер
COPY script.sh /usr/local/bin/script.sh

# Делаем скрипт исполняемым
RUN chmod +x /usr/local/bin/script.sh

# Устанавливаем команду по умолчанию для контейнера
CMD ["/usr/local/bin/script.sh"]