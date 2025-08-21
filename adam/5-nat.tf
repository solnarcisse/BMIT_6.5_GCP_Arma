# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "vpc01nat" {
  name   = "vpc01nat"
  router = google_compute_router.vpc01router.name
  region = "africa-south1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.vpc01-sub01.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.vpc01nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "vpc01nat" {
  name         = "vpc01nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "africa-south1"
}

