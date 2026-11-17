# Hướng dẫn tạo máy ảo (Virtual Machine)

> Máy này chưa cài hypervisor (VirtualBox/QEMU) và không có quyền `sudo` trong lúc soạn bài,
> nên các bước dưới đây **chưa được chạy thử**. Bạn tự chạy và chụp ảnh màn hình để nộp.

## Cách 1: Multipass (nhanh nhất trên Ubuntu)
```bash
sudo snap install multipass
multipass launch 22.04 --name hw1-vm --cpus 2 --memory 2G --disk 10G
multipass list
multipass exec hw1-vm -- uname -a          # chạy lệnh trong VM
multipass exec hw1-vm -- cat /etc/os-release
multipass shell hw1-vm                      # mở shell trong VM
multipass delete hw1-vm && multipass purge  # dọn dẹp
```

## Cách 2: VirtualBox + file ISO (giao diện đồ họa)
```bash
sudo apt install virtualbox
```
1. Tải ISO Ubuntu Server 22.04 từ ubuntu.com.
2. VirtualBox -> **New**: đặt tên, chọn ISO, RAM 2048 MB, đĩa 20 GB.
3. **Start**, cài đặt Ubuntu như máy thật.
4. Chụp ảnh: màn hình VM đang chạy, kết quả `uname -a`, `lsb_release -a`, `free -h`.

Dùng dòng lệnh: `VBoxManage createvm --name hw1 --register`, `VBoxManage startvm hw1 --type headless`.

## Cách 3: Vagrant + VirtualBox (cấu hình dạng mã)
```ruby
# Vagrantfile
Vagrant.configure("2") do |c|
  c.vm.box = "ubuntu/jammy64"
  c.vm.provider("virtualbox") { |v| v.memory = 2048; v.cpus = 2 }
end
```
```bash
vagrant up && vagrant ssh && vagrant destroy
```

## Việc cần làm sau khi chạy
Chụp ảnh các bước trên, lưu vào `docs/img/` (vm-1.png, vm-2.png, ...) và đưa vào báo cáo PDF.
