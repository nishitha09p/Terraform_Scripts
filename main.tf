provider "google" {
  project = "myprojectnishitha13593"  
  region  = "us-central1" 
  credentials = file("C:/terraform/myprojectnishitha13593-c514682c4291.json")  
}
resource "google_compute_network" "my_vpc_network" {
  name                    = "vpc-network"
 
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "dxc-subnet"
  ip_cidr_range = "10.10.10.0/24" 
  network       = google_compute_network.my_vpc_network.id
  region        = "us-central1"
}


resource "google_compute_instance" "my_instance" {
  name         = "dxctechnology"
  machine_type = "e2-micro"
  zone         = "us-central1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
  }
  network_interface {
    network    = google_compute_network.my_vpc_network.id
    subnetwork = google_compute_subnetwork.my_subnet.id
    access_config {
      
    }
  }
}
