# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance 
resource "google_compute_instance" "africasouth-vm01" {
  name         = "africasouth-vm01"
  machine_type = "e2-medium"

# Zone argument required if default provider zone not set 
  zone         = "africa-south1-a"

# Create persistent disk set as boot disk from the following image
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

# Network configurations  
  network_interface {
    subnetwork = google_compute_subnetwork.vpc01-sub01.name
    access_config {
      // Ephemeral public IP 
    }
  }

# Use file() to get shell script for startup script argument
  metadata_startup_script = file("./startup.sh")

}