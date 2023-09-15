variable "acr-name" {
  type    = string
  default = "atikinmecr"
}

# variable "acr-instance" {
#   description = "Name of the container instance"
#   default     = "atikinme_instance"
# }

variable "acr-rg" {
  type    = string
  default = "terra-rg"
}

variable "acr-location" {
  description = "Location of the resources"
  default     = "eastus"
}

variable "acr-containergroup" {
  description = "Acr container group"
  default     = "atikin-cg"
}