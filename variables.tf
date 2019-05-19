variable "cidr_blocks" {
  type        = "list"
  description = "Network CIDR Blocks owned by ADC. Reference: https://wiki.auction.com/pages/viewpage.action?pageId=16883281"

  default = [ ]
}

variable "from_port" {
  type        = "string"
  description = "The networking port to start accept range from"

  default = "0"
}

variable "to_port" {
  type        = "string"
  description = "The networking port to end accept range"

  default = "65535"
}

variable "vpc_id" {
  type        = "string"
  description = "The VPC ID to place this security group"

  default = ""
}

variable "environment" {
  type        = "string"
  description = "The environment this SG is a part of, E.g. dev, stage, prod"

  default = "unknown"
}

variable "team" {
  type        = "string"
  description = "The team this is applicable to, E.g. adc-sre, adc-corp"

  default = "unknown"
}

variable "service" {
  type        = "string"
  description = "The service name this is applicable to, i.e. resi-fe-btbproperty"

  default = "unknown"
}
