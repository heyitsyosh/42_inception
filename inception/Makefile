all: up

up: 
	cd srcs; docker compose up --build -d; docker logs -f mariadb

clean:
	cd srcs; docker compose down --remove-orphans

re: clean all

.PHONY: all up down clean re
