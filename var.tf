variable "project_ID" {
    type = string
    
    description = "Nishitha's Project_ID"
}
variable "region" {
    type = string
   
    description = "Google Cloud Provider's region"
}
variable "credentials" {
    type = string
    
    description = "Path of Service account key"
}
variable "vpc-network" {
    type = string
    
    description = "name of the VPC network"
}
variable "my_subnet" {
    type = string
    
    description = "name of the subnet"
}
variable "subnet_CIDR" {
    type = string
    
    description = "Range of the subnet CIDR"
}
variable "instance_type" {
    type = string
   
    description = "Name of the Instance"
}
variable "machine_type" {
    type        = string
   
    description = "machine type of the instance"
}

variable "instance_zone" {
    type        = string
    
    description = "The zone for the instance"
}
variable "boot_disk_image" {
    type        = string
   
    description = "The image to use for the boot disk"
}
 