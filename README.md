# Bài Tập Thực Hành 01 - NT548

## Môn học: Công nghệ DevOps và Ứng dụng
## Bài tập: Dùng Terraform và CloudFormation để quản lý và triển khai hạ tầng AWS

---

## 📦 Nội dung repo

- **terraform/**: Triển khai hạ tầng AWS bằng Terraform modules.
- **cloudformation/**: Triển khai hạ tầng AWS bằng CloudFormation template YAML.
- **README.md**: Tài liệu hướng dẫn.

---

## 🛠 Triển khai bằng Terraform

### Bước 1: Cài đặt các công cụ cần thiết
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- AWS CLI và cấu hình credentials (`aws configure`)

### Bước 2: Triển khai
```bash
cd terraform/
terraform init
terraform validate
terraform plan
terraform apply
```

### Bước 3: Kiểm tra
- Vào AWS Console để kiểm tra các resource đã tạo.

### Bước 4: Xóa hạ tầng
```bash
terraform destroy
```

---

## 🛠 Triển khai bằng CloudFormation

### Bước 1: Deploy bằng AWS Console
- Vào [AWS CloudFormation Console](https://console.aws.amazon.com/cloudformation).
- Click **Create Stack** → **With new resources (standard)**.
- **Upload file**: `cloudformation/infrastructure.yaml`.
- Đặt tên stack, ví dụ `nt548-stack`.
- Click **Next** → **Create Stack**.

### Bước 2: Deploy bằng AWS CLI (tuỳ chọn)
```bash
aws cloudformation create-stack --stack-name nt548-stack --template-body file://cloudformation/infrastructure.yaml
```

### Bước 3: Kiểm tra
- Vào AWS Console để kiểm tra tài nguyên.

---

## 📋 Ghi chú

- **AMI ID** (`ImageId`) trong CloudFormation template cần phù hợp với vùng (Region) bạn chọn.
- **KeyName** cần đúng với Key Pair AWS để SSH vào EC2.

---

## 📎 Tác giả

- Họ tên: Chu Đức Hải- Hoàng Huỳnh Hải
- MSSV: 22520378-22520381
- Lớp: NT548.P21

---
