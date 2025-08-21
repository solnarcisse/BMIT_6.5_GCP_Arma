# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_health_check
# Resource: Regional Health Check


resource "google_compute_region_health_check" "apps-hc" {
  name                = "apps-hc"
  # region = "" (optional if provider default is set)

  # How often in seconds the HC checks and waits for failure/success
  check_interval_sec  = 5
  timeout_sec         = 5

  # Consecutive success and failure required to determine health
  healthy_threshold   = 2
  unhealthy_threshold = 3

  # Set health check to type HTTP and set endpoint to test
  http_health_check {
    request_path = "/index.html"
    port         = 80
  }
}
