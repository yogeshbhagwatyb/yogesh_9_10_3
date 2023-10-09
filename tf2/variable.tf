variable "cidr" {
  type    = string
  default = "192.168.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = null
}
variable "enable_dns_support" {
  type    = bool
  default = null
}

variable "vpc_name" {
  type    = string
  default = "tcw_vpc"
}

################################################################################################ SUBNET

variable "public_subnet_cidr_1" {
  type    = string
  default = "192.168.1.0/24"
}
variable "public_subnet_tag_1" {
  type    = string
  default = "tcw_public_subnet_az_1a"
}

#####################################################################################################


variable "public_subnet_cidr_2" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.2.0/24"
}
variable "public_subnet_tag_2" {
  type    = string
  default = "tcw_public_subnet_az_1b"
}

##########################################################################################################

variable "database_subnet_cidr_1" {
  description = "mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.5.0/24"
}
variable "database_subnet_tag_1" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "tcw_database_subnet_az_1a"
}

###########################################################################################################

variable "database_subnet_cidr_2" {
  description = "mention the CIDR block for database subnet"
  type        = string
  default     = "192.168.6.0/24"
}
variable "database_subnet_tag_2" {
  description = "Tag for Private Subnet"
  type        = string
  default     = "tcw_database_subnet_az_1b"
}

###########################################################################################################
