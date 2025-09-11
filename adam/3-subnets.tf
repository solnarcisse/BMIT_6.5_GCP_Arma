# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

resource "google_compute_subnetwork" "subnet01" {
  name                     = var.subnet01
  ip_cidr_range            = var.cidr01
  region                   = var.vpcregion
  network                  = google_compute_network.vpc-arm.id
  private_ip_google_access = true
}