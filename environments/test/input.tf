# Azure GUIDS
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Resource Group/Location

variable "resource_group" {}
variable "address_space" {}
variable "address_prefix_test" {}
variable "application_type" {}
variable "virtual_network_name" {

}
variable "location" {

}
variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  type        = string
  default     = "Kesarwani"
}

# Tags
variable "tier" {
  description = "tier name"
  type        = string
  default     = "One"
}
variable "deployment" {
  description = "The prefix which should be used for all resources in this example"
  type        = string
  default     = "Development"
}

