#가용 영역 a의 public subnet
resource "aws_subnet" "sm_puba" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "sm-puba"
  }
}

#가용 영역 c의 public subnet
resource "aws_subnet" "sm_pubc" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "sm-pubc"
  }
}

#가용 영역 a의 private subnet
resource "aws_subnet" "sm_pria" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "sm-pria"
  }
}

#가용 영역 c의 private subnet
resource "aws_subnet" "sm_pric" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "sm-pric"
  }
}

#가용 영역 a의 private DB
resource "aws_subnet" "sm_pridba" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "sm-pridba"
  }
}

#가용 영역 c의 private DB
resource "aws_subnet" "sm_pridbc" {
  vpc_id            = aws_vpc.sm_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "sm-pridbc"
  }
}
