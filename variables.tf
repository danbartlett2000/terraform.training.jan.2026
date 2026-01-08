variable "db-ami" {
  type        = string
  description = "this is gonna store aws NV region ami ID"
  default     = "ami-068c0051b15cdb816"
}

variable "db-vm-size" {
  type = string

}

variable "db-vm-name" {
  type = string

}
variable "novm" {
  type        = number
  description = "this is for number of vm to be created"
}

variable "ec2_instances" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db"  = "t2.small"
  }

}