output "vpc_id" {
  value = aws_default_vpc.default.id
}

output "subnet_ids" {
  value = data.aws_subnets.default_subnets.ids
}