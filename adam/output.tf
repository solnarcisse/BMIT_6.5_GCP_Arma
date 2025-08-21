
output "instance_external_ips" {
  value = {
    vm1 = "http://${google_compute_instance.africasouth-vm01.network_interface[0].access_config[0].nat_ip}"
    vm2 = "http://${google_compute_instance.africasouth-vm01.network_interface[0].access_config[0].nat_ip}"
  }
  description = "External IPs of both VMs"
}
