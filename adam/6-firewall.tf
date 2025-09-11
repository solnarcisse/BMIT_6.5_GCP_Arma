# Direct SSH Access
# For app VPC
resource "google_compute_firewall" "ssh01" {
  name    = var.ssh01
  network = google_compute_network.vpc-arm.name
  #direction = "INGRESS" (not needed as it is a default value- see API documentation)

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_firewall" "http01" {
  name    = var.http01
  network = google_compute_network.vpc-arm.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Ping FW rule
resource "google_compute_firewall" "ping01" {
  name    = var.ping01
  network = google_compute_network.vpc-arm.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}