variable vpc_security_group_ids {
  type        = list(string)
  description = "security group ids for ec2"
}

variable subnet_id {
  type        = string
  description = "subnet id for ec2"
}

variable key_name {
  type        = string
  description = "key pair name for ec2"
}

variable tags {
  type        = string
  description = "name of ec2 instance"
}

variable local_tags {
  type        = map
  description = "local tags"
}