# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "vpc01router" {
  name    = "vpc01router"
  region  = "africa-south1"
  network = google_compute_network.armageddon-vpc01.id
}
