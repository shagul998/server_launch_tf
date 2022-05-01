variable "ec2_instance_count" {
  description = "number of instances need to create"
  default     = "1"
}

variable "aws_instance_ami" {
  description = "Amazon Machine Image ID"
}

variable "aws_instance_type" {
  description = "EC2 instance type"
}

variable "subnet_id" {
  description = "the id of subnet created in init_cluster script"
}

variable "security_group_id" {
  description = "id of security group created in init_clustser script"
}

variable "ssh_key_name" {
  description = "AWS key pair name to install on the EC2 instance"
}

variable "iam_instance_profile" {
  description = "id of iam instance profile created in init_cluster script"
}

variable "tag_name" {}

variable "tag_owner" {}
