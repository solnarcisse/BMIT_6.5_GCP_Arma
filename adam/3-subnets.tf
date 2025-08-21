resource "google_compute_subnetwork" "vpc01-sub01" {
  name                     = "vpc01-sub01"
  ip_cidr_range            = "10.82.109.0/24"
  region                   = "africa-south1"
  network                  = google_compute_network.armageddon-vpc01.id
  private_ip_google_access = true
}

# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional_proxy_sub01" {
  name          = "regional-proxy-subnet"
  region        = "africa-south1"
  ip_cidr_range = "10.62.109.0/24"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.armageddon-vpc01.id
  role          = "ACTIVE"
}