FROM python:3.9-slim-buster

WORKDIR /home

RUN apt update
RUN apt-get update
RUN pip3 install --upgrade pip
RUN pip3 install Flask
RUN apt-get install wget -y
RUN wget https://gitlab.com/frol/devops-flask-test/-/raw/master/app.py
RUN apt install curl -y

ENV PYTHONPATH=/home
ENV FLASK_APP=exampleapp:app

CMD ["flask", "run", "--host", "0.0.0.0"]
