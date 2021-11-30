# Resource Group
variable "resoure_group_location" {
  description = "Resource Group Location"
  type = string
  default = "eastus"
}
variable "resource_group" {
      description = "Name of the resource group, including the -rg"
      default     = "myResourceGroup"
      type        = string
}
variable "location" {
  
}