FROM debian:jessie

RUN apt-get update && \
    apt-get install -y nginx nginx-extras && \
    rm -rf /var/lib/apt/lists/*

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./*.htpasswd /etc/nginx/

CMD nginx -g "daemon off;"

