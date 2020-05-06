#-----compute/outputs.tf-----

output "instance_id" {
  value = "${oci_core_instance.oci_instance_tf.id}"
}

output "instance_public_ip" {
  value = "${oci_core_instance.oci_instance_tf.public_ip}"
}
