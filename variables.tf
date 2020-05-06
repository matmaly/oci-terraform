#-----root/variables.tf-----

#Env variables
variable "compartment_id" {}

#Storage Vars
variable "project_name" {}
variable "bucket_name" {}
variable "bucket_namespace" {}

#Networking vars
variable "vcn_cidr_block" {}
variable "vcn_display_name" {}
variable "ig_display_name" {}
variable "subnet_cidr_block" {}
variable "subnet_display_name" {}
variable "security_list_display_name" {}

