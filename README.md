# habr_docker_test
Try docker https://habr.com/ru/articles/963180/

cd habr_docker_test

docker build -t my-python-app .

sudo docker run -d -p 8080:5000 --name my-running-app my-python-app

docker ps

http://127.0.0.1:8080/qq

docker stop my-running-app

docker start my-running-app

docker stop my-running-app

docker rm my-running-app