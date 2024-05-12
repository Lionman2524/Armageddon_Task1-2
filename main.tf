terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.28.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "firm-retina-416800"
  region = "us-central1"
  credentials = "firm-retina-416800-fb44ee3be68b.json"
  
}

resource "google_storage_bucket" "static-site" {
  name          = "taskuno"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

}

resource "google_compute_network" "auto-vpc-tf" {
  name                                      = "auto-vpc-tf"
  auto_create_subnetworks                   = false
}