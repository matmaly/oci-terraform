#-----database/outputs.tf-----

output "autonomous_db_id" {
  value = "oci_database_autonomous_database.oci_database_autonomous_tf.id"
}

output "autonomous_db_name" {
  value = "oci_datase_autonomous_database.oci_database_autonomous_tf.name"
}

output "autonomous_db_pass" {
  value = "oci_database_autonomous_database.oci_database_autonomous_tf.admin_password"
}
