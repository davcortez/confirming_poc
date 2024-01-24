variable "region" {
  type    = string
  default = "us-east-1"
}

variable "function_name" {
  type = string
}

variable "filename" {
  type = string
}


variable "table_name" {
  type = string
}

variable "hash_key" {
  type = string
}

variable "attributes" {
  type    = map(string)
  default = {}
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}