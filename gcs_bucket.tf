resource "google_storage_bucket" "default" {
  name                        = "terraform-state-36930707"
  location                    = "EU"
  force_destroy               = true
  uniform_bucket_level_access = true
}
