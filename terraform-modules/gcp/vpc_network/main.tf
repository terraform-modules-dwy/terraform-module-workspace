resource "google_compute_network" "vpc_network" {
  project                 = var.project_name
  name                    = var.vpc_name
  auto_create_subnetworks = try(var.subnetworks, true)
  mtu                     = try(var.mtu, 1460)
}