
/*
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
*/

module "vpc" {
  source = "./modules/vpc"

  project_id        = var.project_id
  credentials_file = var.credentials_file
  region            = var.region
  vpc_name          = var.vpc_name
  subnets           = var.subnets

}