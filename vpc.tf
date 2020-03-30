# VPC

resource "aws_vpc" "default" {
    cidr_block = var.vpc_cidr_block

    tags = {
       Name = "wp-pvc-tf"
    }
}

# Internet Gateway

resource "aws_internet_gateway" "default" {
    vpc_id = aws_vpc.default.id

    tags = {
       Name = "wp-igw"
    }
}

# Subnets

resource "aws_subnet" "wp-public-subnet" {
    vpc_id            = aws_vpc.default.id
    cidr_block        = var.public_subnet_cidr_block

    tags = {
       Name = "wp-public"
    }
}

resource "aws_subnet" "wp-private-subnet" {
    vpc_id            = aws_vpc.default.id
    cidr_block        = var.private_subnet_cidr_block

    tags = {
       Name = "wp-private"
    }
}

# Route Tables

resource "aws_route_table" "wp-rt-public-subnet" {
    vpc_id = aws_vpc.default.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.default.id
    }

    tags = {
       Name = "wp-rt-public"
    }
}

resource "aws_route_table_association" "wp-public-subnet" {
    subnet_id = aws_subnet.wp-public-subnet.id
    route_table_id = aws_route_table.wp-rt-public-subnet.id
}