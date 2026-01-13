from flask import Flask
import requests

# Создаем экземпляр приложения Flask

app = Flask(__name__)


# Определяем маршрут для главной страницы
@app.route("/")
def hello_world():
    # Эта строка — то, что мы увидим в браузере
    return "Привет, Habr, из Docker-контейнера!"


@app.route("/cats")
def get_fact():
    url = "https://catfact.ninja/fact"
    response = requests.get(url)
    if response.status_code == 200:
        return response.json()
    else:
        return "При загрузке произошла ошибка. Обновите страницу."


# Эта часть нужна, чтобы запустить сервер, когда мы запускаем файл напрямую
if __name__ == "__main__":
    # Важный момент: host='0.0.0.0' делает сервер видимым
    # за пределами контейнера.
    app.run(host="0.0.0.0", port=5000)
