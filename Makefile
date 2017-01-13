help:
	@echo "release   : build the docker image"
	@echo "run       : launch the docker container"

release:
	docker build -t denouche/myip .

run:
	docker pull denouche/myip
	docker stop myip
	docker rm myip
	docker run --rm -it --name myip -p 127.0.0.1:8089:80 denouche/myip

