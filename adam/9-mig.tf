# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones
# Datasource: Get a list of Google Compute zones that are UP in a region
 data "google_compute_zones" "available" {
   status = "UP"
  #  region = "" (optional if provider default is set)
 }

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager
# Resource: Managed Instance Group
resource "google_compute_region_instance_group_manager" "app-mig01" {
  depends_on         = [google_compute_router_nat.vpc01nat]
  name               = "app-mig"
  base_instance_name = "app"
  #region = "" (optional if provider default is set)

  # Compute zones to be used for VM creation
  distribution_policy_zones = data.google_compute_zones.available.names

  # Instance Template argument for MIG
  version {
    instance_template = google_compute_region_instance_template.temp01.id
   }

  # Set a port to be used by backend service
   named_port {
     name = "webserver"
     port = 80
   }

  # Autohealing Config
   auto_healing_policies {
     health_check      = google_compute_region_health_check.apps-hc.id
     initial_delay_sec = 300
    }
 }