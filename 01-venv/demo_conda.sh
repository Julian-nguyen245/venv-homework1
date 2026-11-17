#!/usr/bin/env bash
# Demo 4: conda - quản lý cả Python lẫn thư viện nhị phân (C/C++, CUDA...) ngoài Python
set -e
source "$(conda info --base)/etc/profile.d/conda.sh"
cd "$(dirname "$0")"
conda env remove -y -n demo-hw1 >/dev/null 2>&1 || true

conda create -y -q -n demo-hw1 python=3.11 >/dev/null
conda activate demo-hw1
pip install -q requests==2.30.0
python check_env.py
conda env list | grep -E "demo-hw1|base"
conda deactivate
conda env remove -y -n demo-hw1 >/dev/null
