terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
  }
}

provider "google" {
  project = "sound-habitat-462410-m4"
  region  = "us-central1"
}

resource "random_string" "suffix" {
  length  = 8
  upper   = false
  special = false
}

resource "google_storage_bucket" "default" {
  name     = "${var.base_bucket_name}-${random_string.suffix.result}"
  location = "US"
  force_destroy = true
}
