#!/usr/bin/env bash
# Chạy toàn bộ demo SQL. Dùng: ./run_mysql.sh [user] (sẽ hỏi mật khẩu nếu cần)
set -e
cd "$(dirname "$0")"
U="${1:-root}"
for f in schema.sql data.sql queries.sql; do
  echo "######## $f"
  mysql -u"$U" -p -t < "$f"
done
