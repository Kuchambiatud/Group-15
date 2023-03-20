locals {
  project_id = "terraform-code-380800"
}

provider "google" {
    project = local.project_id
    region  = "us-east4-a"
    zone    = "us-east4-a"
  
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = false
  delete_default_routes_on_create = true
  depends_on = [
    google_project_service.compute_service
  ]
}
resource "google_project_service" "compute_service" {
  project = local.project_id
  service = "compute.googleapis.com"
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
 autoauto_create_subnetworks = false
 delete_defdelete_default_routes_on_create = true
 dependepends_on = [
   google_project_service.compute_service
 ] 
}



  
