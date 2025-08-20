resource "google_compute_subnetwork" "liu-kang" {
  name                     = "liu-kang"
  ip_cidr_range            = "10.97.255.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.arma.id 
  private_ip_google_access = true
}
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "arma" {
  name                            = "arma"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false

}

