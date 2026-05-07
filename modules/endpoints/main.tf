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
  vpc_id             = var.vpc_id
  service_name       = "com.amazonaws.${data.aws_region.current.name}.ssm"
  vpc_endpoint_type  = "Interface"
  subnet_ids         = var.private_subnet_ids
  security_group_ids = [var.sg_vpce_id]
  # aws_security_group.vpce.id

  private_dns_enabled = true
  tags = {
    Name = var.vpc_endpoint_ssm
    env  = var.env
  }
}

# resource "aws_vpc_endpoint" "ssmmessages" {
#   vpc_id            = aws_vpc.main.id
#   service_name      = "com.amazonaws.ap-south-1.ssmmessages"
#   vpc_endpoint_type = "Interface"

#   subnet_ids = [
#     aws_subnet.private_a.id
#   ]

#   security_group_ids = [
#     aws_security_group.vpce.id
#   ]

#   private_dns_enabled = true
# }