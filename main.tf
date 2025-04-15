provider "google" {
 project = var.project_ID  
 region  = var.region
 credentials = var.credentials
}
resource "google_compute_network" "my_vpc_network" {
 name                    = var.vpc-network
}
 
resource "google_compute_subnetwork" "my_subnet" {
 name          = var.my_subnet
 ip_cidr_range = var.subnet_CIDR
 network       = google_compute_network.my_vpc_network.id
 region        = "us-central1"
}
 
resource "google_compute_instance" "default" {
 name         = var.instance_type
 machine_type = var.machine_type
 zone         = var.instance_zone
 boot_disk {
   initialize_params {
     image = var.boot_disk_image
   }
 }
 network_interface {
   network    = google_compute_network.my_vpc_network.id
   subnetwork = google_compute_subnetwork.my_subnet.id
   access_config {
     
   }
 }
}