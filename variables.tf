############################################
# IBM CLOUD                                #
# Region, API Key, Resource Group, SSH Key #
############################################

variable "ibmcloud_region" {
  default = "us-south"
  description = "IBM Cloud Region where your infrastructure is going to be provisioned."
}

variable "ibmcloud_api_key" {}

variable "resource_group" {
  default = "Default"
  description = "Resource Group where your infrastructure is going to be provisioned."
}

variable "ssh_key" {
  default = "vshinya-ssh-key"
  description = "Name of an existing SSH Key."
}

############################################
# IBM Cloud Virtual Private Cloud          #
############################################

variable "vpc_name" {
  default = "vpc"
  description = "IBM Cloud Virtual Private Cloud instance name."
}

############################################
# CIDR Block (VPC)                         #
############################################

variable "cidr_zone_1" {
  default = "192.168.0.0/24"
  description = "CIDR block for the address prefix."
}

variable "cidr_zone_2" {
  default = "192.168.64.0/24"
  description = "CIDR block for the address prefix."
}

variable "cidr_zone_3" {
  default = "192.168.128.0/24"
  description = "CIDR block for the address prefix."
}

############################################
# CIDR Block (Subnets)                     #
############################################

variable "subnet_default_zone_1" {
  default = "192.168.0.0/24"
  description = "CIDR block for the address prefix."
}

variable "subnet_default_zone_2" {
  default = "192.168.64.0/24"
  description = "CIDR block for the address prefix."
}

variable "subnet_default_zone_3" {
  default = "192.168.128.0/24"
  description = "CIDR block for the address prefix."
}
