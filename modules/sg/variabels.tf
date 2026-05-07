variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "env" {
  type        = string
  description = "Environment Name"
}

variable "sg_name" {
  type        = string
  description = "Security Group Name"
}

variable "sg_description" {
  type        = string
  description = "Security Group Desription"
}

variable "vpce_sg_name" {
  type        = string
  description = "VPC Endpoint Security Group"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR Block"
}

variable "private_ec2_sg_name" {
  type        = string
  description = "Private EC2 Security Group"
}