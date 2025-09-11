# Resource: MIG Autoscaling
resource "google_compute_region_autoscaler" "autoscale01" {
  name   = var.autoscale01
  target = google_compute_region_instance_group_manager.app-mig01.id
  region = var.vpcregion

  autoscaling_policy {
    max_replicas    = 4
    min_replicas    = 2
    cooldown_period = 60

    # 50% CPU for autoscaling event
    cpu_utilization {
      target = 0.5
    }
  }
}
