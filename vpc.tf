provider "google" {
  credentials = file("abcdef-1sdf-39d2f92cc6a3.json")
  project     = var.project_id
  region      = var.region
}
resource "google_compute_network" "vpc_network" {
  name = "terraform-vpc-network"
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.name
  region        = var.region
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "private-subnet"
  ip_cidr_range = "10.0.2.0/24"
  network       = google_compute_network.vpc_network.name
  region        = var.region
}
locals {
  google_credentials = var.google_credentials != "" ? var.google_credentials : getenv("GOOGLE_CREDENTIALS")
}

