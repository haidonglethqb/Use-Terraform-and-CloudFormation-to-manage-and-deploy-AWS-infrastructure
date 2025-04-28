resource "aws_instance" "public" {
  ami = "ami-0f34c5ae932e6f0e4"
  instance_type = var.instance_type
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true
  key_name = "my-terraform-key"
  vpc_security_group_ids = [var.public_sg_id]
  tags = { Name = "public-instance" }
}
resource "aws_instance" "private" {
  ami = "ami-0f34c5ae932e6f0e4"
  instance_type = var.instance_type
  subnet_id = var.private_subnet_id
  vpc_security_group_ids = [var.private_sg_id]
  tags = { Name = "private-instance" }
}