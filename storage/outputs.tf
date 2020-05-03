 #---------storage/outputs.tf---------

output "bucketname" {
  value = "${oci_objectstorage_bucket.oci_bucket.id}"
}
