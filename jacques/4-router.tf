resource "google_compute_router" "region" {
    name    = "${var.region}-router"
    region  = var.region
    network = google_compute_network.app.id
}