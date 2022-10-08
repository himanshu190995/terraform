# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Himanshu"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}



# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["10.1.0.0/24", "10.1.1.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  type        = string
  description = "VPC to host static web site"
}

# Variable to signal the current environment 
variable "env" {
  default     = "dev"
  type        = string
  description = "Deployment Environment"
}
variable "prefix" {
   default     = "week5"
  type        = string
  description = "Name prefix"
}
