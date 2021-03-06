bucket_name = "tf_bucket" 
project_name = "terraform"
bucket_namespace = "cloudstarscee"

vcn_cidr_block = "10.0.0.0/16"
vcn_display_name = "terraformVCNmma"
ig_display_name = "ig_mma_tf"
subnet_display_name = "subnet_mma_tf"
subnet_cidr_block = "10.0.1.0/24"
security_list_display_name = "security_list_mma_tf"
route_table_display_name = "route_table_tf"

instance_shape = "VM.Standard2.1"
instance_display_name = "ubuntu_mma_tf"
instance_shape_config_ocpus = "1"
instance_public_key = "/home/ubuntu/terraform/oci/oci-terraform/compute/keys/ssh_key.pub"
instance_image_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaukhdqqokh3evzyqvashnxld2gyl2wx6k5cratnb7hcxij4u7eh3q"

