FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl \
	&& openssl req -x509 -newkey rsa:4096 \
    -keyout /etc/ssl/private/pk.key \
    -out /etc/ssl/certs/cert.crt \
    -sha256 -days 3650 -nodes -subj "/CN=myoshika.42.fr"
COPY nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]
