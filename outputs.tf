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
