# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

resource "google_compute_subnetwork" "region_a" {
  name                     = "${var.app_name}-${var.region_a}-subnet"
  ip_cidr_range            = var.subnet_a_cidr
  region                   = var.region_a
  network                  = google_compute_network.app.id
  private_ip_google_access = true
}
