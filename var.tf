variable "project" {
  description = "Nishitha's Project_Id"
  type        = string
}

variable "region" {
  description = "region of project"
  type        = string
}

variable "credentials" {
  description = "Path of the service account key"
  type        = string
}

variable "instance_count" {
  description = "number of compute instances to be created"
  type        = number
}

variable "machine_type" {
  description = "machine type of the compute instances"
  type        = string
}

variable "zone" {
  description = "zone for the compute instances"
  type        = string
}

variable "image" {
  description = "The boot disk image for the compute instances"
  type        = string
}

variable "network" {
  description = "network for the compute instances"
  type        = string
}
