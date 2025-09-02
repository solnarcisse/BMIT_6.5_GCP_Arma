resource "google_compute_router_nat" "region" {
  name   = "${var.region}-nat"
  router = google_compute_router.region.name
  region = var.region

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.region.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.region.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "region" {
  name         = "${var.region}-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = var.region

}
