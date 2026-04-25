variable "sg_config" {
  type = map(any)
}

variable "account" {
  type = string
}

variable "project" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "vpc_id" {
  type = string
}