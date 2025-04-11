variable "project_ID" {
    type = string
    default = "myprojectnishitha13593"
    description = "Nishitha's Project_ID"
}
variable "region" {
    type = string
    default = "myprojectnishitha13593"
    description = "Google Cloud Provider's region"
}
variable "credentials" {
    type = string
    default = "C:/terraform/myprojectnishitha13593-c514682c4291.json"
    description = "Path of Service account key"
}
variable "vpc-network" {
    type = string
    default = "vpc-network"
    description = "name of the VPC network"
}
variable "my_subnet" {
    type = string
    default = "nis-subnet"
    description = "name of the subnet"
}
variable "subnet_CIDR" {
    type = string
    default = "10.10.10.0/24"
    description = "Range of the subnet CIDR"
}
variable "instance_type" {
    type = string
    default = "dxctech"
    description = "Name of the Instance"
}
variable "machine_type" {
    type        = string
    default     = "e2-medium"
    description = "machine type of the instance"
}

variable "instance_zone" {
    type        = string
    default     = "us-central1-c"
    description = "The zone for the instance"
}
variable "boot_disk_image" {
    type        = string
    default     = "debian-cloud/debian-11"
    description = "The image to use for the boot disk"
}
 