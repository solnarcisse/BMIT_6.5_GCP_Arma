variable "vpc-arm" {
  default = "armageddon-vpc01"
}

variable "project-id" {
  default = "project007part2"
  description = "gcp project name"
}

variable "vpcregion" {
  default = "africa-south1"
  description = "region the vpc is in"
}

variable "cidr01" {
  default = "10.82.109.0/24"
  description = "cidr range of subnet"
}

variable "subnet01" {
  default = "vpc01-sub01"
}

variable "router01" {
  default = "vpc01router"
}

variable "nat01" {
  default = "vpc01nat"
}

variable "ssh01" {
  default = "allow-ssh"
}

variable "http01" {
  default = "allow-web-traffic"
}

variable "ping01" {
  default = "allow-ping"
}

variable "vm01" {
  default = "africasouth-vm01"
  description = "name of vm"
}

variable "vpczone01" {
  default = "africa-south1-a"
  description = "zone within the region"
}

variable "temp01" {
  default = "template-terraform"
  description = "instance template"
}

variable "apps-hc" {
  default = "healthcheck"
}

variable "app-mig01" {
  default = "managed-instance-group"
}

variable "autoscale01" {
  default = "vpc01-autoscale"
}