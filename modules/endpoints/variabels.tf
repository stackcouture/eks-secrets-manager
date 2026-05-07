variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of Private Subnet IDs"
}

variable "sg_vpce_id" {
  type        = string
  description = "List of Private Subnet IDs"
}

variable "vpc_endpoint_sts" {
  type        = string
  description = "VPC Endpoint STS"
}

variable "vpc_endpoint_ssm" {
  type        = string
  description = "VPC Endpoint SSM"
}

variable "env" {
  type        = string
  description = "VPC Environment"
}

variable "vpc_endpoint_ssmmessages" {
  type        = string
  description = "VPC Endpoint SSMMessages"
}

variable "vpc_endpoint_ec2messages" {
  type        = string
  description = "VPC Endpoint EC2 Message"
}

variable "aws_rt_private_id" {
  type        = string
  description = "Private Route Table Id"
}