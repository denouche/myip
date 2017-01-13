help:
	@echo "release   : build the docker image"
	@echo "run       : launch the docker container"

release:
	docker build -t denouche/myip .

update: pull stop start

start:
	docker run -d --name myip -p 127.0.0.1:8089:80 denouche/myip

stop:
	docker stop myip
	docker rm myip

pull:
	docker pull denouche/myip

