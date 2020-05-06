#-----compute/outputs.tf-----

output "instance_id" {
  value = "${oci_core_instance.oci_instance_tf.id}"
}
