resource "aws_vpc" "jm-153622-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc_actuacionenclase"
  }
}

resource "aws_internet_gateway" "jm-153622-ig" {
  vpc_id = aws_vpc.jm-153622-vpc.id
  tags = {
    Name = "ig_actuacionenclase"
  }
}

resource "aws_default_route_table" "jm-153622-Rt" {
  default_route_table_id = aws_vpc.jm-153622-vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jm-153622-ig.id
  }


  tags = {
    Name = "rt-actuacionenclase"
  }
} 

resource "aws_subnet" "jm-153622-Subnet" {
  vpc_id                  = aws_vpc.jm-153622-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "subnet_actuacionenclase"
  }
}

