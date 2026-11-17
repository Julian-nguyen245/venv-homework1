# Bài tập 1: Môi trường ảo, máy ảo, container và cơ sở dữ liệu quan hệ

| Thư mục | Nội dung | Trạng thái chạy thử |
|---|---|---|
| `01-venv/` | Demo `venv`, `virtualenv`, `uv`, `conda`; hướng dẫn `pyenv` | `venv`, `virtualenv`, `uv`, `conda` đã chạy (Ubuntu 22.04). `pyenv` chỉ là hướng dẫn |
| `02-vm/` | Hướng dẫn tạo máy ảo (Multipass, VirtualBox, Vagrant) | Đã demo trên máy ảo Ubuntu 24.04 của Killercoda (ảnh chụp: [`docs/Screenshot from 2026-11-17 20-40-18.png`](<docs/Screenshot from 2026-11-17 20-40-18.png>)). Các cách cài hypervisor trên máy cá nhân chỉ là hướng dẫn |
| `03-docker/` | Dockerfile, Compose, script demo | Đã chạy trên máy cá nhân: `docker build` từ `Dockerfile`, chạy container, `curl`, `exec` (kết quả trong `docs/bao-cao-moi-truong.pdf`); `hello-world` cũng chạy trên Killercoda. `docker compose` cũng đã chạy |
| `04-sql/` | Schema, dữ liệu mẫu, truy vấn MySQL; chạy Postgres bằng Docker | Hướng dẫn cài đặt + file demo để tự chạy thử (không kèm kết quả chạy) |


## Yêu cầu
Ubuntu 22.04, Python 3, `uv`, `conda` (cho `01-venv`); Docker (cho `03-docker`); MySQL 8 (cho `04-sql`).

## Cách chạy
```bash
# 1. Môi trường Python
./01-venv/demo_venv.sh        # hoặc demo_virtualenv.sh, demo_uv.sh, demo_conda.sh

# 2. Máy ảo: dùng playground Ubuntu của Killercoda (killercoda.com/playgrounds) hoặc làm theo 02-vm/HUONGDAN_VM.md
#    rồi chạy: uname -a; cat /etc/os-release; lscpu; free -h; df -h /

# 3. Docker (cần thuộc nhóm docker: sudo usermod -aG docker $USER, đăng nhập lại; hoặc chạy trong Killercoda)
./03-docker/demo_docker.sh

# 4. SQL (cài MySQL theo docs/bao-cao-sql.pdf; nhập mật khẩu khi được hỏi)
./04-sql/run_mysql.sh hw1     # xem docs/bao-cao-sql.pdf mục 3 để tạo user hw1
```
