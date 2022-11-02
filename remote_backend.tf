terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "buensalido"
    workspaces {
      name = "TF-GCP-Cloud-SQL"
    }
  }
}
