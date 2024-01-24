variable "region" {
    type = string
    default = "us-east-1"
}

variable "function_name" {
  type = string
}

variable "filename" {
  type = string
}

variable "handler" {
  type = string
}

variable "runtime" {
  type = string
}

variable "environment_variables" {
  type = map(string)
  default = {}
}