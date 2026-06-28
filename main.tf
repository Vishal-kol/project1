provider "google" {
  project     = "project-79a0f092-e287-4dd8-b88"
  region      = "us-central1-a"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}
git