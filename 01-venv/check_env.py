"""In ra thông tin môi trường Python đang chạy, dùng chung cho mọi demo."""
import sys
from importlib import metadata

print("Python      :", sys.version.split()[0])
print("Interpreter :", sys.executable)
print("Prefix      :", sys.prefix)
try:
    print("requests    :", metadata.version("requests"))
except metadata.PackageNotFoundError:
    print("requests    : (chưa cài)")
