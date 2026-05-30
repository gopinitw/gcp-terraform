resource "google_compute_instance" "demo-vm" {
  name         = "my-demo-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  tags = ["demo"]
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project     = "dev-uk-123"
  region      = "us-central1"
}

provider "google" {
  project     = "dev-uk-123"
  region      = "us-central1"
}


resource "google_storage_bucket" "demo-bucket" {
  name     = "my-demo-bucket"
  location = "US"
}