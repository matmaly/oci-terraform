#-----database/variables.tf-----

variable "compartment_id" {}
variable "autonomous_db_cpu_core_count" {
  default = "1"
}
variable "autonomous_db_data_storage_size_in_tbs" {
  default = "100"
}
variable "autonomous_db_name" {
  default = "adbtf"
}
variable "autonomous_db_display_name" {
  default = "adbmmatf"
}
variable "autonomous_db_workload" {
  default = "DW"
}
