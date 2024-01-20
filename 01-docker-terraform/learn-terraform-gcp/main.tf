terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("dtc-de-course-storage-bigquery-admin-secret.json")

  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "gct_de_bucket" {
  name          = "gct_de_bucket"
  location      = var.region
  storage_class = "STANDARD"
}