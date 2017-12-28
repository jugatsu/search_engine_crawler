FROM alpine:3.6

LABEL maintainer="Anton Kvashenkin <anton.jugatsu@gmail.com> (@jugatsu)"

RUN apk --no-cache add python3 py3-pip

WORKDIR /app
COPY requirements.txt /app

RUN pip3 install -r requirements.txt

COPY . /app/
WORKDIR /app/crawler

ENTRYPOINT ["python3", "-u", "crawler.py"]
