TARGET=go-noise

$(TARGET): clean
	go build -ldflags="-s -w" -o $@

clean:
	rm -f $(TARGET)
docker-build:
	docker-compose up --build -d
docker-up:
	docker-compose up -d
docker-stop:
	docker-compose stop
docker-login:
	docker-compose exec go_noise bash

.PHONY:clean
