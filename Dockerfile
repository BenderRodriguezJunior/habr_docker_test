# 1. Используем официальный образ Python как основу (Debian-based)
FROM python:3.11-slim

# 2. Создаем системного пользователя и группу (синтаксис для Debian)
# --system создаст пользователя без пароля и домашней директории
RUN groupadd --gid 2000 appgroup && \
    useradd --uid 2000 --gid appgroup --shell /bin/sh --no-create-home appuser

# 3. Устанавливаем рабочую директорию
WORKDIR /app

# 4. Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копируем код приложения, СРАЗУ назначая владельца appuser
# Это эффективнее, чем делать RUN chown отдельно
COPY --chown=appuser:appgroup . .

# 6. Переключаемся на непривилегированного пользователя
USER appuser

# 7. "Сообщаем" Docker о порте (используйте > 1024 для non-root)
EXPOSE 5000

# 8. Запуск приложения
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
