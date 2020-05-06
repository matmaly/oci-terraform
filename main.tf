# --- root/main.tf----

provider "oci" {}

# Deploy storage
module "storage" {
  source           = "./storage"
  project_name     = "${var.project_name}"
  compartment_id   = "${var.compartment_id}"
  bucket_namespace = "${var.bucket_namespace}"
  bucket_name      = "${var.bucket_name}"
}

# Deploy Networking
module "networking" {
  source              = "./networking"
  compartment_id      = "${var.compartment_id}"
  
  #VCN
  vcn_cidr_block      = "${var.vcn_cidr_block}"
  vcn_display_name    = "${var.vcn_display_name}"
  
  #IG
  ig_display_name     = "${var.ig_display_name}"
  
  #Subnet
  subnet_display_name = "${var.subnet_display_name}"
  subnet_cidr_block   = "${var.subnet_cidr_block}"

  #Security List
  security_list_display_name = "${var.security_list_display_name}"
}
