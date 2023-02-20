resource "aws_key_pair" "key-name" {
  key_name   = var.key-name
  public_key = var.public_key_material
}
resource "aws_instance" "public-instances" {
  count         = var.public-instance-count
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type
  subnet_id     = element(var.public-subnets-ids, count.index)
  key_name      = aws_key_pair.key-name.key_name

  tags = {
    Name = "public-instance-${count.index + 1}"
  }
}
resource "aws_instance" "private-instances" {
  count         = var.private-instance-count
  ami           = lookup(var.ami, var.region)
  instance_type = var.instance_type
  subnet_id     = element(var.private-subnets-ids, count.index)
  key_name      = aws_key_pair.key-name.key_name

  tags = {
    Name = "private-instance-${count.index + 1}"
  }
}