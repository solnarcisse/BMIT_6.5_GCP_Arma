resource "google_compute_router_nat" "nat01" {
  name   = var.nat01
  router = google_compute_router.router01.name
  region = var.vpcregion

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.subnet01.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.nat01.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "nat01" {
  name         = var.nat01
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region       = var.vpcregion

}