# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "router01" {
  name    = var.router01
  region  = var.vpcregion
  network = google_compute_network.vpc-arm.id
}

