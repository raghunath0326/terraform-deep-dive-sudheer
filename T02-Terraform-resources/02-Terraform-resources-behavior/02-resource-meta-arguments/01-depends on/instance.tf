resource "aws_instance" "web" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "terraform-demo"
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.test-security-group.id]
  user_data = file("nginx-install.sh")
  availability_zone = "us-east-1a"
  associate_public_ip_address = true

  tags = {
    "Name" = "WebApp-terraform"
  }
} 