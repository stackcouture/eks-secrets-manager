output "eks_cluster_sg_id" {
  value = aws_security_group.eks_cluster_sg.id
}

output "vpce_sg_id" {
  value = aws_security_group.vpce.id
}

output "ec2_private_sg_id" {
  value = aws_security_group.private_ec2.id
}

