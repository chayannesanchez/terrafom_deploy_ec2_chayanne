variable "cuenta" {
  type = string
}

variable "proyecto" {
  type = string
}

variable "key_name" {
  type = string
}

variable "private_key_path" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "ec2_config" {
  type = map(any)
}

variable "sg_config" {
  type = map(any)
}