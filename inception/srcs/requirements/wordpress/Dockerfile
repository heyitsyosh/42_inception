FROM debian:bullseye

COPY config/www.conf /etc/php/7.4/fpm/pool.d
COPY init.sh /var/www/html/init.sh

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
	wget \
	curl \
	php7.4 \
	php7.4-fpm \
	php7.4-mysqli \
	php7.4-gd \
	php7.4-curl \
	php7.4-mbstring \
	php7.4-xml \
	php7.4-zip \
	php7.4-phar \
	mariadb-client \
	&& curl --create-dirs -o /usr/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/bin/wp \
    && wp core download --allow-root \
    && chmod +x /var/www/html/init.sh \
	&& mkdir /run/php

ENTRYPOINT [ "/bin/bash", "/var/www/html/init.sh" ]
#CMD ["php-fpm7.4", "-F"]
