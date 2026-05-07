variable "private_instance_name" {
  type        = string
  description = "Private Instance Name"
}

variable "env" {
  type        = string
  description = "Environment Name"
}

variable "private_subnet_id" {
  type        = string
  description = "Private Subnet ID"
}

variable "ec2_private_sg_id" {
  type        = string
  description = "EC2 private SG ID"
}

variable "aws_iam_instance_profile_ssm_name" {
  type        = string
  description = "AWS IAM Instnace profile name"
}