data "aws_region" "current" {}

resource "aws_vpc_endpoint" "sts" {
  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${data.aws_region.current.name}.sts"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = var.private_subnet_ids
  private_dns_enabled = true
  tags = {
    Name = var.vpc_endpoint_sts
    env  = var.env
  }
}

resource "aws_vpc_endpoint" "ssm" {
  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${data.aws_region.current.name}.ssm"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = var.private_subnet_ids
  private_dns_enabled = true
  tags = {
    Name = var.vpc_endpoint_ssm
    env  = var.env
  }
}