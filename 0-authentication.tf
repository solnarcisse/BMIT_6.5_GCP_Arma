# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project     = "project-id"
  region      = "region"
  credentials = "key.json"
}

