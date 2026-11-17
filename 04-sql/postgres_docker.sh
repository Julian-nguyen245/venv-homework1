#!/usr/bin/env bash
# Chạy PostgreSQL bằng Docker (không cần cài lên hệ thống)
docker run -d --name hw1-pg -e POSTGRES_PASSWORD=secret -p 5432:5432 postgres:16
sleep 5
docker exec -it hw1-pg psql -U postgres -c "SELECT version();"
# dọn dẹp: docker rm -f hw1-pg
