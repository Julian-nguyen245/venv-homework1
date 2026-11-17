# Bài tập 1: Môi trường ảo, máy ảo, container và cơ sở dữ liệu quan hệ

Repo nộp bài. Báo cáo viết bằng LaTeX (tiếng Việt), repo chỉ chứa bản PDF, kèm demo chạy được.

| Thư mục | Nội dung | Trạng thái chạy thử |
|---|---|---|
| `01-venv/` | Demo `venv`, `virtualenv`, `uv`, `conda`; hướng dẫn `pyenv` | `venv`, `virtualenv`, `uv`, `conda` đã chạy (Ubuntu 22.04). `pyenv` chỉ là hướng dẫn |
| `02-vm/` | Hướng dẫn tạo máy ảo (Multipass, VirtualBox, Vagrant) | Chưa chạy (cần cài hypervisor) |
| `03-docker/` | Dockerfile, Compose, script demo | `app.py` đã chạy trực tiếp; Docker chưa chạy (cần quyền nhóm `docker`) |
| `04-sql/` | Schema, dữ liệu mẫu, truy vấn MySQL; chạy Postgres bằng Docker | Chưa chạy (cần tài khoản MySQL) |
| `docs/` | `bao-cao-moi-truong.pdf`, `bao-cao-sql.pdf` | Đã biên dịch |

## Yêu cầu
Ubuntu 22.04, Python 3, `uv`, `conda` (cho `01-venv`); Docker (cho `03-docker`); MySQL 8 (cho `04-sql`).

## Cách chạy
```bash
# 1. Môi trường Python
./01-venv/demo_venv.sh        # hoặc demo_virtualenv.sh, demo_uv.sh, demo_conda.sh

# 2. Máy ảo: làm theo 02-vm/HUONGDAN_VM.md rồi chụp ảnh vào docs/img/

# 3. Docker (cần: sudo usermod -aG docker $USER, đăng nhập lại)
./03-docker/demo_docker.sh

# 4. SQL (MySQL đã cài; nhập mật khẩu khi được hỏi)
./04-sql/run_mysql.sh hw1     # xem docs/bao-cao-sql.pdf mục 3 để tạo user hw1
```

## Việc cần làm trước khi nộp
- Điền họ tên và MSSV vào PDF (mã nguồn LaTeX nằm ngoài repo, ở `~/venv-homework1-latex/docs/`), biên dịch lại rồi chép PDF vào `docs/`.
- Chạy các phần "chưa chạy" ở bảng trên, chụp ảnh và chèn vào PDF nếu giảng viên yêu cầu.

## Nộp bài
```bash
git add .
git commit -m "Nop bai tap 1"
git push origin main
```
