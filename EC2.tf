# SSM 명령 전송을 위한 인스턴스 ID 데이터 소스
data "aws_instance" "zap_instance_id" {
    instance_id = aws_instance.zap_instance.id
}

# EC2 instance
resource "aws_instance" "zap_instance" {
  ami           = "ami-05e02e6210658716f"
  instance_type = "t2.medium"
  key_name      = var.your_key_pair_name
  
  metadata_options {
        http_tokens = "required"
    }
    
  tags = {
    Name = "ZapTestInstance"
  }

  vpc_security_group_ids = [aws_security_group.zap_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.zap_instance_profile.name
}