# security group
resource "aws_security_group" "zap_sg" {
  description = "ZAP security group"

  ingress {
    description      = "tcp"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks = ["13.124.225.219/32"] #
  }

  ingress {
    description      = "ZAP CLI"
    from_port        = 8090
    to_port          = 8090
    protocol         = "tcp"
    cidr_blocks = ["13.124.225.219/32"] #
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # all과 동일
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "zap_sg_group"
  }
}

variable "eip_cidr_blocks" {
  type    = list(string)
  default = []
}