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
  
  #Route Table
  route_table_display_name = "${var.route_table_display_name}"
}

# Deploy Compute
module "compute" {
  source 	               = "./compute"
  compartment_id 	       = "${var.compartment_id}"
  instance_availability_domain = "${var.instance_availability_domain}"
  instance_shape               = "${var.instance_shape}"
  subnet_id 	               = "${module.networking.subnet_id}"
  instance_display_name        = "${var.instance_display_name}"
  ssh_public_key               = "${var.instance_public_key}"
  instance_shape_config_ocpus  = "${var.instance_shape_config_ocpus}"
  instance_image_id   	       = "${var.instance_image_id}"
  
}

# Deploy the Database
module "database" {
  source 	 	  	    = "./database"
  compartment_id 	  	    = "${var.compartment_id}"
  #cpu_core_count 	    = "${var.autonomous_db_cpu_core_count}"
  #data_storage_size_in_tbs = "${var.autonomous_db_data_storage_size_in_tbs}"
  #db_name 		    = "${var.autonomous_db_name}"
  #display_name 	    = "${var.autonomous_db_display_name}"
  #db_workload 		    = "${var.autonomous_db_workload}"
}
