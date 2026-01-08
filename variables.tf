variable "db-ami" {
  type    = string
  default = "ami-068c0051b15cdb816"
}

variable "db-vm-size" {
  type = string
}

variable "db-vm-name" {
  type = string
}

variable "novm" {
  type = number
}