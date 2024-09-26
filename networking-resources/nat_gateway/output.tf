output "eip" {
  value = aws_eip.nat_gateway_eip.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}