# Используем официальный образ Python в качестве базового образа
FROM python:3.9-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы с нашего компьютера в контейнер
COPY . .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт 5000 для доступа к веб-серверу
EXPOSE 5000

# Определяем команду, которая будет выполняться при запуске контейнера
CMD ["python", "app.py"]
