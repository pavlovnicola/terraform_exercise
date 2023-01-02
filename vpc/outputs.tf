output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_sg" {
  value = aws_security_group.sg["public"].id
}

output "public_subnet_01" {
  value = aws_subnet.public_subnet_01.id
}

output "public_subnet_02" {
  value = aws_subnet.public_subnet_02.id
}
