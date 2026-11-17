#!/usr/bin/env bash
# Demo 2: virtualenv (công cụ bên thứ ba, nhanh hơn venv, hỗ trợ nhiều phiên bản Python)
set -e
cd "$(dirname "$0")"
rm -rf .demo/vexe && mkdir -p .demo
# virtualenv được chạy tạm bằng uvx, không cần cài vào hệ thống
uvx virtualenv -q .demo/vexe
source .demo/vexe/bin/activate
pip install -q requests==2.28.2
python check_env.py
deactivate
