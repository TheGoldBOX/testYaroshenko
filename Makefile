all: build_conteiner
build_conteiner:
	docker-compose up -d
build_image_dockerfile:
	docker build -t app.py .