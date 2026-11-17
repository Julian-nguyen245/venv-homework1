#!/usr/bin/env bash
# Demo 1: venv (module chuẩn của Python) - cô lập thư viện theo từng dự án
set -e
cd "$(dirname "$0")"
rm -rf .demo/venv && mkdir -p .demo

echo "== Python hệ thống (chưa kích hoạt env) =="
python3 check_env.py

echo; echo "== Tạo và kích hoạt venv, cài requests==2.31.0 =="
python3 -m venv .demo/venv
source .demo/venv/bin/activate
pip install -q requests==2.31.0
python check_env.py
pip freeze | head -5
deactivate

echo; echo "== Sau deactivate: quay về Python hệ thống =="
python3 check_env.py
