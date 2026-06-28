terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
  }
}

provider "google" {
  project = "project-79a0f092-e287-4dd8-b88"
  region  = "us-central1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}