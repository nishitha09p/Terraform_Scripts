provider "google" {
  project = "myprojectnishitha13593"  
  region  = "us-central1"     
  credentials = "c:/terraform/data/count/keys.json"
}
provider "google" {
    project = "myprojectnishitha13593"
    alias = "east"
    region = "us-east1"
    credentials = "c:/terraform/data/count/keys.json"
}
resource "google_compute_instance" "my_instance_east" {
  provider   = google.east
  name         = "dxcpune-instance"
  machine_type = "e2-micro"
  zone = "us-east1-b" 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
  }
  network_interface {
    network = "default" 
    access_config {
      
    }
  }
  lifecycle{
    prevent_destroy = true
  }
}

  

resource "google_compute_instance" "my_instance" {
  name         = "dxcchennai-instance"
  machine_type = "e2-micro" 
  zone         = "us-central1-a" 
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
  }
  network_interface {
    network = "default" 
    access_config {
      
    }
  }
}

