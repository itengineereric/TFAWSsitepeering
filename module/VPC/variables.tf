variable "vpccidr" {
  type        = string
  description = "cidr values"
}

variable "pubsubcidr" {
  type        = list(string)
  default = []
  description = "cidr values"
}
variable "privsubcidr" {
  type        = list(string)
  default = []
  description = "cidr values"
}
variable "env" {
  type        = string
  description = "environment name"
}

variable "region" {
  type        = string
  description = "region name"
}

