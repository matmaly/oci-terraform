#-----networking/variables.tf-----

#Env variables
variable "compartment_id" {}

#Networking variables
variable "vcn_cidr_block" {}
variable "vcn_display_name" {}
variable "ig_display_name" {}
variable "subnet_cidr_block" {}
variable "subnet_display_name" {}
variable "security_list_display_name" {}
variable "route_table_display_name" {}
variable "route_table_route_rules_cird_block" {
  default = "0.0.0.0/0"
}
