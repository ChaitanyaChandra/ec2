resource "aws_instance" "vm" {
  ami                    = "ami-02358d9f5245918a3"
  instance_type          = "t2.medium"
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  tags = merge(tomap({
    "Name" = var.tags
  }), var.local_tags)
}