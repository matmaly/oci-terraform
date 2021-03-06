# --- networking/main.tf----

# Create the VCN
resource "oci_core_vcn" "oci_vcn_tf" {
    #Required
    cidr_block     = "${var.vcn_cidr_block}"
    compartment_id = "${var.compartment_id}"

    #Optional
    display_name   = "${var.vcn_display_name}"
}

# Create the IG
resource "oci_core_internet_gateway" "oci_ig_tf" {
  compartment_id = "${var.compartment_id}"
  vcn_id         = "${oci_core_vcn.oci_vcn_tf.id}"
  enabled        = "true"
  display_name   = "${var.ig_display_name}"
}

# Create the Security List
resource "oci_core_security_list" "oci_security_list_tf" {
  compartment_id = "${var.compartment_id}"
  vcn_id 	 = "${oci_core_vcn.oci_vcn_tf.id}"
  display_name   = "${var.security_list_display_name}"
  
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol    = "all"
  }
  
  ingress_security_rules {
    #SSH
    protocol = "6"
    source   = "0.0.0.0/0"
    tcp_options {
      max = "22"
      min = "22"
    }
  }
  ingress_security_rules {
    #80
    protocol = "6"
    source   = "0.0.0.0/0"
    tcp_options {
      max = "80"
      min = "80"
    }
  } 
}

# Create a subnet
resource "oci_core_subnet" "oci_subnet_tf" {
  cidr_block          = "${var.subnet_cidr_block}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${oci_core_vcn.oci_vcn_tf.id}"
  display_name        = "${var.subnet_display_name}"
  route_table_id      = "${oci_core_route_table.oci_route_table_tf.id}"
  security_list_ids   = [
    "${oci_core_security_list.oci_security_list_tf.id}"
    ]
}

# Create a Route table
resource "oci_core_route_table" "oci_route_table_tf" {
  compartment_id = "${var.compartment_id}"
  vcn_id 	 = "${oci_core_vcn.oci_vcn_tf.id}"
  display_name   = "${var.route_table_display_name}"
  route_rules {
    network_entity_id = "${oci_core_internet_gateway.oci_ig_tf.id}"
    destination       = "${var.route_table_route_rules_cird_block}"
    destination_type  = "CIDR_BLOCK"
  }
}
