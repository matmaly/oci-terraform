#-----root/outputs.tf-----

#Storage

#Networking
output "vcn_id" {
  value = "${module.networking.vcn_id}"
}

output "ig_id" {
  value = "${module.networking.ig_id}"
}

output "subnet_id" {
  value = "${module.networking.subnet_id}"
}

output "security_list_id" {
  value = "${module.networking.security_list_id}"
}

# Compute
output "instance_id" {
  value = "${module.compute.instance_id}"
}

output "instance_public_ip" {
  value = "${module.compute.instance_public_ip}"
}

# Database
output "autonomous_db_id" {
  value = "${module.database.autonomous_db_id}"
}

output "autonomous_db_name" {
  value = "${module.database.autonomous_db_name}"
}

output "autonomous_db_pass" {
  value = "module.database.autonomous_db_pass"
}
