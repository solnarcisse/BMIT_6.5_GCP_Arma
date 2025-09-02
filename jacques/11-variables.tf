variable "vpc_name" {
  type    = string
  default = "cloud-row-vpc"
}

# variable "subnet_iprange" {
#   type = string
# }

variable "app_name" {
  type = string
  default = "welcome-to-cloud-row-app"
}
variable "project_id" {
  type        = string
  description = "The GCP project ID"
  default    = "jdp-class-6-labs"
}

variable "region" {
  default     = "us-south1"
  description = "value for the region in which resources will be created"
}

variable "zone" {
  default     = "us-south1-a"
  description = "The zone in which resources will be created"
}

variable "vm_instance" {
  type        = string
  default     = "cloud-life-vm-instance"
  description = "Name of the VM instance"
}

# variable "public_subnet_ip_cidr_range" {
#   type    = string
#   default = "10.32.1.0/24"
#   description = "CIDR range for the public subnet"
# }
variable "private_subnet" {
  type        = string
  default     = "10.32.11.0/24"
  description = "CIDR range for the private subnet"
}

variable "backend_port_name" {
  type        = string
  default     = "http"
  description = "Name of the backend port"
}


