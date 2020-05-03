#---------storage/main.tf---------

# Create a random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create the bucket
resource "oci_objectstorage_bucket" "oci_bucket" {
  compartment_id = "${var.compartment_id}"
  name           = "${var.bucket_name}-${random_id.tf_bucket_id.dec}"
  namespace      = "${var.bucket_namespace}"
}
