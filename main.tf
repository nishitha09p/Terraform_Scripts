provider "google" {
  project = var.project  
  region  = var.region
  credentials = var.credentials
}
provider "google" {
    project = var.project
    alias = var.alias
    region = "var.region 
    credentials = var.credentialas 
}
resource "google_compute_instance" "my_instance_east" {
  provider   = var.provider 
  name         = var.name 
  machine_type = var.machine_type 
  zone = var. zone  
  boot_disk {
    initialize_params {
      image = var.image 
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
  name         = var.insatnce_name 
  machine_type = var.machine_type 
  zone         = var.zone 
  
  boot_disk {
    initialize_params {
      image = var.image  
    }
  }
  network_interface {
    network = "default" 
    access_config {
      
    }
  }
}

