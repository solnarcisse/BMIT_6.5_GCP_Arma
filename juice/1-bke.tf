# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "armageddon-juice"
    prefix = "terraform/state"
  credentials = "armageddon-469519-fcd6891e758e.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
