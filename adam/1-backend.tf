# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "armageddonbucket01"
    prefix      = "terraform/armageddon01"
    credentials = "project007part2-3d32fc61ae49.json"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}
