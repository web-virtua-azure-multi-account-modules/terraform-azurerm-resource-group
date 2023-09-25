locals {
  tags_resorce_groups = {
    "tf-name" = var.name
    "tf-type" = "resource-group"
  }
}

resource "azurerm_resource_group" "create_resource_group" {
  name       = var.name
  location   = var.location
  managed_by = var.managed_by
  tags       = merge(var.tags, var.use_tags_default ? local.tags_resorce_groups : {})
}
