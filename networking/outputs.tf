#-----networking/outputs.tf-----

output "vcn_id" {
  value = "${oci_core_vcn.oci_vcn_tf.id}"
}

output "ig_id" {
  value = "${oci_core_internet_gateway.oci_ig_tf.id}"
}

output "subnet_id" {
  value = "${oci_core_subnet.oci_subnet_tf.id}"
}