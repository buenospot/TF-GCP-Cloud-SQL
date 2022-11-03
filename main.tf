terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.41.0"
    }
  }
}

provider "google" {
  credentials = var.gcp_creds

  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_az
}

resource "google_sql_database" "database" {
  name     = "mark-test-db"
  instance = google_sql_database_instance.postgres_instance.name
}

# found this code on the GCP site and looks pretty good
resource "google_sql_database_instance" "postgres_instance" {
  # name             = "mark-test-db-instance"
  name = ""
  region           = var.gcp_region
  database_version = "POSTGRES_14"
  root_password    = "Passw0rd1!"
  settings {

    # want to specify a really small tier
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled = true
    }

  }
  deletion_protection = false # set to true to prevent destruction of the resource
}

output "name" {
  value = google_sql_database_instance.postgres_instance.name
}

# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }
