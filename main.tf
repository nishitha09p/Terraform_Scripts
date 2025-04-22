provider "google" {
  project     = "myprojectnishitha13593"
  region      = "us-central1"
  credentials = "c:/terraform/data/count/keys.json"
}

resource "google_compute_instance" "my_instance" {
  for_each = {
    prod = "e2-micro"
    dev  = "e2-small"
  }

  name         = "india-${each.key}"
  machine_type = each.value
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
 network_interface {
    network      = "default"
    access_config {} # Request a public IP
  }
}



  

