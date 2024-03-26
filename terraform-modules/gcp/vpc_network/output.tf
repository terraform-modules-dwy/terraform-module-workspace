output "name" {
  value = google_compute_network.vpc_network.name
  description = "name of the gcp vpc network"
}

output "id" {
  value = google_compute_network.vpc_network.id
  description = "id of the gcp network"
}