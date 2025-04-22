provider "google" {
  project     = "myprojectnishitha13593"
  region      = "us-central1"
  credentials = "keys.json"
}

resource "google_compute_network" "jio_network" {
  name                    = "jio-network"
}
resource "google_compute_network" "airtel_network" {
  name                    = "airtel-network"
}
data "google_compute_network" "datasource_airtel_network" {
 name = google_compute_network.airtel_network.name
}

resource "google_compute_subnetwork" "jio_subnet" {
  name            = "jio-subnet"
  ip_cidr_range = "10.2.0.0/24"
  network       = google_compute_network.jio_network.id  
  region          = "us-central1"
}

resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "e2-micro"
  zone         = "us-central1-c"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
  
    subnetwork = google_compute_subnetwork.jio_subnet.id
    access_config {}
  }
  network_interface {
  
    network = data.google_compute_network.datasource_airtel_network.id
    access_config {}
  }


}
