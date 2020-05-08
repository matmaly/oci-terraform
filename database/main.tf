#-----database/main.tf-----

resource "random_string" "autonomous_db_admin_password" {
  length      = 16
  min_numeric = 1
  min_lower   = 1
  min_upper   = 1
  min_special = 1
}

resource "oci_database_autonomous_database" "oci_database_autonomous_tf" {
  admin_password 	   = "${random_string.autonomous_db_admin_password.result}"
  compartment_id 	   = "${var.compartment_id}"
  cpu_core_count 	   = "${var.autonomous_db_cpu_core_count}"
  data_storage_size_in_tbs = "${var.autonomous_db_data_storage_size_in_tbs}"
  db_name 		   = "${var.autonomous_db_name}"
  display_name 		   = "${var.autonomous_db_display_name}"
  db_workload		   = "${var.autonomous_db_workload}"
}
