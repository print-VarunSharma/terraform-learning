# This follows this turtorial: https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "experimentation-learning"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
