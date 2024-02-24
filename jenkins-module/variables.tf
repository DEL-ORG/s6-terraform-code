variable "aws_region" {
  type = string
}


variable "instance_name" {
  type = string
}


variable "instance_ID" {
  type    = string
  default = "ami-06c3cc1dd06653a0d"
}


variable "instance_params" {
  type = any
}

variable "tags" {
  type = map(any)
}
