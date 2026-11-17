#!/usr/bin/env bash
# Demo Docker: build image -> chạy container -> kiểm tra -> dọn dẹp
set -e
cd "$(dirname "$0")"
docker --version
docker run --rm hello-world | head -5          # kiểm tra Docker hoạt động

docker build -t hw1-web:1.0 .                  # build image từ Dockerfile
docker images hw1-web
docker run -d --name hw1-web -p 8000:8000 -e APP_NAME=demo hw1-web:1.0
sleep 1
curl -s localhost:8000                          # gọi thử dịch vụ trong container
docker ps --filter name=hw1-web
docker exec hw1-web python --version            # chạy lệnh bên trong container
docker logs hw1-web | tail -3
docker rm -f hw1-web

echo "== Docker Compose =="
if docker compose version >/dev/null 2>&1; then
  docker compose up -d --build
  sleep 1; curl -s localhost:8000
  docker compose down
else
  echo "Bỏ qua: chưa cài plugin Compose (sudo apt install docker-compose-v2)"
fi
