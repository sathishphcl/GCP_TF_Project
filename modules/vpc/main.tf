
resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnetworks" {
  for_each        = { for subnet in var.subnets : subnet.name => subnet }

  name            = each.value.name
  ip_cidr_range   = each.value.ip_cidr_range
  region          = each.value.region
  network         = google_compute_network.vpc_network.id
  project         = var.project_id
}
