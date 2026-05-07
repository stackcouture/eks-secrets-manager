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