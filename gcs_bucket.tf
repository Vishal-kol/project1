resource "google_storage_bucket" "default" {
  name          = "terraform-state-${random_id.bucket_suffix.hex}"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

}
