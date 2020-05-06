#-----compute/main.tf-----

resource "oci_core_instance" "oci_instance_tf" {
  availability_domain = "${var.instance_availability_domain}"
  compartment_id      = "${var.compartment_id}"
  shape  	      = "${var.instance_shape}"
  subnet_id 	      = "${var.subnet_id}"
  display_name 	      = "${var.instance_display_name}"
  
  #Shape Config
  shape_config {
    ocpus = "${var.instance_shape_config_ocpus}"
  }
  
  #SSH
  metadata = {
    ssh_authorized_keys = "${var.ssh_public_key}"
  }

  #Image
  source_details {
    source_id = "${var.instance_image_id}"
    source_type = "image"
  }
}
