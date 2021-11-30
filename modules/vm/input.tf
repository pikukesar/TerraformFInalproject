variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  type        = string
  default     = "Kesarwani"
}
variable "resource_group" {
      description = "Name of the resource group, including the -rg"
      default     = "myResourceGroup"
      type        = string
}
variable location {}
variable "application_type" {}
variable "resource_type" {}