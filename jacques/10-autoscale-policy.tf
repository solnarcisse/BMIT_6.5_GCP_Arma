# Resource: MIG Autoscaling
resource "google_compute_region_autoscaler" "region" {
  name   = "${var.app_name}-${var.region}-autoscaler"
  target = google_compute_region_instance_group_manager.region.id
  region = var.region

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

