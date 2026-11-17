"""Web server tối giản (chỉ dùng thư viện chuẩn) để demo container."""
import os
import platform
import socket
from http.server import BaseHTTPRequestHandler, HTTPServer


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        body = (
            f"Xin chao tu container!\n"
            f"hostname : {socket.gethostname()}\n"
            f"os       : {platform.platform()}\n"
            f"python   : {platform.python_version()}\n"
            f"APP_NAME : {os.getenv('APP_NAME', '(chua dat)')}\n"
        ).encode()
        self.send_response(200)
        self.send_header("Content-Type", "text/plain; charset=utf-8")
        self.end_headers()
        self.wfile.write(body)


if __name__ == "__main__":
    HTTPServer(("0.0.0.0", 8000), Handler).serve_forever()
