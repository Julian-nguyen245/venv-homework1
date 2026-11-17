#!/usr/bin/env bash
# Demo 3: uv - trình quản lý gói + môi trường + phiên bản Python viết bằng Rust
set -e
cd "$(dirname "$0")"
rm -rf .demo/uvproj && mkdir -p .demo
uv --version

echo "== uv venv với Python 3.12 (tự tải interpreter nếu thiếu) =="
uv venv --python 3.12 .demo/uvproj/.venv
uv pip install --python .demo/uvproj/.venv/bin/python requests==2.32.3
.demo/uvproj/.venv/bin/python check_env.py

echo; echo "== uv run: chạy script với dependency tạm thời, không cần tạo env thủ công =="
uv run --no-project --python 3.13 --with requests python check_env.py

echo; echo "== Quản lý dự án bằng pyproject.toml + uv.lock =="
cd .demo/uvproj
uv init --name demo --python 3.12 -q . 2>/dev/null || true
uv add -q requests
uv lock -q && ls
