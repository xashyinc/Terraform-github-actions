output "public-instance-count" {
  value = length(aws_instance.public-instances.*.id)
}
output "private-instance-count" {
  value = length(aws_instance.private-instances.*.id)
}