FROM debian:bullseye

RUN apt-get update \
	&& apt-get install -y mariadb-server \
	&& mkdir /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld

COPY maria.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY init.sh /

ENTRYPOINT [ "bin/bash", "/init.sh" ]
