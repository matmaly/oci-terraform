#-----compute/variables.tf-----

variable "subnet_id" { 
  module "networking" {
    source    = "../networking"
    subnet_id = "${oci_core_subnet.oci_subnet_tf.id}"
  }
}

variable "instance_shape" {}
variable "instance_display_name" {}
variable "instance_shape_config_ocpus" {}
variable "ssh_public_keys" {}
variable "instance_image_id" {}

