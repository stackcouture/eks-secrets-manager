# EKS Cluster Security Group
resource "aws_security_group" "eks_cluster_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = var.sg_name
    "Env"  = var.env
  }
}

# VPCEndpoint Security Group 
resource "aws_security_group" "vpce" {
  name   = var.vpce_sg_name
  vpc_id = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = var.vpce_sg_name
    "Env"  = var.env
  }
}

# Private EC2 Security Group
resource "aws_security_group" "private_ec2" {
  name   = var.private_ec2_sg_name
  vpc_id = var.vpc_id

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = var.private_ec2_sg_name,
    "Env"  = var.env
  }
}