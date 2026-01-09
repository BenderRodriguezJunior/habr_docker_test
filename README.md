## habr_docker_test
Try docker https://habr.com/ru/articles/963180/

### Переходим в директорию приложения

cd habr_docker_test

### Собираем образ с помощью docker build
docker build -t my-python-app .

### Чтобы убедиться, что образ действительно создался, можно выполнить команду
docker images

### Запускаем контейнер из образа с помощью docker run
docker run -d -p 8080:5000 --name my-running-app my-python-app

### Посмотреть, что запущено
docker ps

### Проверяем результат
http://127.0.0.1:8080/qq

### Остановить контейнер
docker stop my-running-app

### Посмотреть, остановленные контейнеры
docker ps -a 

### Запуск остановленного контейнера
docker  start my-running-app

### Остановить контейнер
docker stop my-running-app

### Удалить контейнер
docker rm my-running-app