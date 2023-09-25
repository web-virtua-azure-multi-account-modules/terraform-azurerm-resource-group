variable "name" {
  description = "Resource group name"
  type    = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist, ex: East US"
  type = string
  default = "East US"
}

variable "managed_by" {
  description = "The ID of the resource or application that manages this Resource Group"
  type = string
  default = null
}

variable "use_tags_default" {
  description = "If true will be use the tags default to resources"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to compartment"
  type    = map(any)
  default = {}
}
