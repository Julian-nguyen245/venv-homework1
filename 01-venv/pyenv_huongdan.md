# pyenv (hướng dẫn - máy hiện chưa cài pyenv)

pyenv **chỉ quản lý phiên bản Python**, không quản lý thư viện. Thường dùng kèm `venv`.

```bash
# cài các gói biên dịch cần thiết (Ubuntu/Debian)
sudo apt update && sudo apt install -y build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev curl libffi-dev liblzma-dev

curl https://pyenv.run | bash        # cài pyenv

# thêm vào ~/.bashrc
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

pyenv install 3.12.7                 # biên dịch từ mã nguồn (vài phút)
pyenv versions                       # liệt kê
pyenv global 3.12.7                  # mặc định toàn máy
cd du-an && pyenv local 3.11.9       # ghi .python-version cho riêng thư mục
python -m venv .venv                 # kết hợp với venv
```
