## habr_docker_test
Try docker https://habr.com/ru/articles/963180/

1. Переходим в директорию приложения

```cd habr_docker_test```

2. Собираем образ с помощью docker build

```docker build -t my-python-app .```

3. Чтобы убедиться, что образ действительно создался, можно выполнить команду

```docker run -d -p 8080:5000 --name my-running-app my-python-app```

4. Посмотреть, что запущено

```docker ps```

5. Проверяем результат

[Кликаем сюда](http://127.0.0.1:8080/qq "http://127.0.0.1:8080/qq") - Откроется в браузере.


6. Остановить контейнер

```docker stop my-running-app```

7. Посмотреть, остановленные контейнеры

```docker ps -a```

8. Запуск остановленного контейнера

```docker  start my-running-app```

9. Остановить контейнер

```docker stop my-running-app```

10. Удалить контейнер

```docker rm my-running-app```