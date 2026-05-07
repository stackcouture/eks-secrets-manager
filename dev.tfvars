#VPC 
vpc_cidr             = "10.16.0.0/16"
instance_tenancy     = "default"
vpc_name             = "vpc"
env                  = "dev"
enable_dns_support   = true
enable_dns_hostnames = true

#IGW 
igw_name     = "VPC-IGW"
cluster_name = "eks-cluster"

# Subnets 
pub_subnet_count      = 3
pub_cidr_block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub_availability_zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pub_sub_name          = "subnet-public"
pri_subnet_count      = 3
pri_cidr_block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri_availability_zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
pri_sub_name          = "subnet-private"

# Route Table
public_rt_name  = "public-route-table"
private_rt_name = "private-route-table"

# NAT
nat_gw_name = "NAT-GW"
eip_name    = "VPC-Elastic-IP"

# SG 
sg_name        = "eks-cluster-sg"
sg_description = "Security group for EKS cluster"

# IAM 
is_eks_role_enabled           = true
is_eks_nodegroup_role_enabled = true
aws_region                    = "ap-south-1"

# Endpoints 
vpc_endpoint_sts         = "VPC Endpoint STS"
vpc_endpoint_ssm         = "VPC Endpoint SSM"
vpce_sg_name             = "VPC Endpoint Security Group"
vpc_endpoint_ssmmessages = "VPC Endpoint SSMMessages"
