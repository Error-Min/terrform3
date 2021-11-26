data "aws_ami" "amzn" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "sm_web" {
  ami = data.aws_ami.amzn.id
  instance_type = "t2.micro"
  key_name = "sm-key"
  vpc_security_group_ids = [aws_security_group.sm_websg.id]
  availability_zone = "ap-northeast-2a"
  private_ip = "10.0.0.11" #프라이빗 아이피를 주석처리하면 아래의 associate....ip도 주석해야됨.
  subnet_id = aws_subnet.sm_puba.id

  tags = {
    "Name" = "sm-web"
  }
}

resource "aws_eip" "sm_web_ip" {
    vpc = true
    instance = aws_instance.sm_web.id
    associate_with_private_ip = "10.0.0.11"
    depends_on = [aws_internet_gateway.sm_ig] #디펜존 설정해보기
}

 output "public_ip" { #로드벨런서에도 사용
   value = aws_instance.sm_web.public_ip
 }