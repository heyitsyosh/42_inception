all: up

up: 
	cd srcs && \
	docker compose up --build -d

down:
	cd srcs && \
	docker compose down --remove-orphans --volumes

reset:
	sudo rm -rf /home/myoshika/data;
	sudo mkdir /home/myoshika/data;
	sudo mkdir /home/myoshika/data/wp;
	sudo mkdir /home/myoshika/data/db

re: clean all

.PHONY: all up down clean re
