FROM debian:bullseye

RUN apt-get update \
	&& apt-get install -y mariadb-server \
	&& mkdir /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld

EXPOSE 3306

COPY maria.conf /etc/my.cnf.d/maridb-server.cnf
COPY init.sh /

ENTRYPOINT [ "bin/bash", "init.sh" ]
# CMD [ "mariadbd", "--init-file=/etc/my.cnf.d/init.txt" ]
