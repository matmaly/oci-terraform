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

# Create a subnet
resource "oci_core_subnet" "oci_subnet_tf" {
  cidr_block          = "${var.subnet_cidr_block}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${oci_core_vcn.oci_vcn_tf.id}"
  display_name        = "${var.subnet_display_name}" 
}
