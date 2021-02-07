FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install --requirement requirements.txt

ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]
