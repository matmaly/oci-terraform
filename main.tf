# --- root/main.tf----

provider "oci" {}

# Deploy storage
module "storage" {
  source         = "./storage"
  project_name   = "${var.project_name}"
  compartment_id = "${var.compartment_id}"
  bucket_namespace = "${var.bucket_namespace}"
  bucket_name = "${var.bucket_name}"
}
