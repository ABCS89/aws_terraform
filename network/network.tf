# VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}

# SUBNET
resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}

# INTERNET GATEWAY
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "internet-gateway-terraform"
  }
}

# ROUTE TABLE
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.example.id

  route = []

  tags = {
    Name = "example"
  }
}
