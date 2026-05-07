output "public_subnets" {
  value = [for subnet in aws_subnet.public_subnet : subnet.id]
}

output "private_subnets" {
  value = [for subnet in aws_subnet.private_subnet : subnet.id]
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet[0].id
}