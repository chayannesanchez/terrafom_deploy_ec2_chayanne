variable "ec2_config" {
  type = map(any)
}

variable "security_group_ids" {
  type = map(string)
}

variable "iam_instance_profiles" {
  type = map(string)
}

variable "key_name" {
  type = string
}

variable "private_key_path" {
  type = string
}

variable "tags" {
  type = map(string)
}