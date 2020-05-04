#-----networking/variables.tf-----

#Env variables
variable "compartment_id" {}

#Networking variables
variable "vcn_cidr_block" {}
variable "vcn_display_name" {}
variable "ig_display_name" {}
variable "subnet_cidr_block" {}
variable "subnet_display_name" {}
