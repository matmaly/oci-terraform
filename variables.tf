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

#Compute vars
variable "instance_shape" {
  default = "VM.Standard2.1"
}
variable "instance_display_name" {}
variable "instance_public_key" {}
variable "instance_shape_config_ocpus" {
  default = "1"
}
variable "instance_image_id" {}
variable "instance_availability_domain" {
  default = "CUZa:EU-FRANKFURT-1-AD-2"
}
