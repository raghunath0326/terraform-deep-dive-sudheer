resource "aws_security_group" "test-security-group" {
    name = "test-demo-sg"
    description = "VPC sg for demo"
    vpc_id = aws_vpc.my_vpc.id
    }
