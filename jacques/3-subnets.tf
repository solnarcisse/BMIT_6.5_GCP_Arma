resource "google_compute_subnetwork" "private_subnet"{
  name                     = "cloud-row-private-subnet"
  network                  = google_compute_network.vpc.id
  project                  = var.project_id
  ip_cidr_range            = var.private_subnet
  region                   = var.region
  private_ip_google_access = true# Enable Private Google Access if needed
}