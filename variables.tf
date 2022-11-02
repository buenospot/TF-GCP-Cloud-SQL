variable "gcp_project" {
  description = "The GCP Project"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region that this resource will be provisioned in."
  type        = string
}

variable "gcp_az" {
  description = "The GCP AZ region that this resouce will be provisioned in."
  type        = string
}

output "gcp_cloudsql_dbname" {
  description = "This is the name of the database that gets created."
  type        = string
}