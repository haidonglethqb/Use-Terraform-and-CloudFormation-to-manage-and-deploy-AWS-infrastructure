# Bài Tập Thực Hành 01: Terraform triển khai hạ tầng AWS

## Cách sử dụng:
1. Cấu hình AWS CLI:
   aws configure

2. Khởi tạo Terraform:
   terraform init

3. Kiểm tra:
   terraform validate

4. Triển khai:
   terraform apply

5. Xem IP public của EC2:
   terraform output

## Ghi chú:
- Cần tạo Key Pair trước tại AWS EC2.
- Sửa key_name trong modules/ec2/main.tf cho đúng.