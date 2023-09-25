# Azure Resource Group for multiples accounts with Terraform module
* This module simplifies creating and configuring of Resource Group across multiple accounts on Azure

* Is possible use this module with one account using the standard profile or multi account using multiple profiles setting in the modules.

## Actions necessary to use this module:

* Criate file provider.tf with the exemple code below:
```hcl
provider "azurerm" {
  alias   = "alias_profile_a"

  features {}
}

provider "azurerm" {
  alias   = "alias_profile_b"

  features {}
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}
```


## Features enable of Compartment configurations for this module:

- Resource group

## Usage exemples


### Create resource group

```hcl
module "resource_test" {
  source = "web-virtua-azure-multi-account-modules/resource-group/azurerm"

  name     = "resource-group-name"
  location = "East US"

  providers = {
    azurerm = azurerm.alias_profile_b
  }
}
```

## Variables

| Name | Type | Default | Required | Description | Options |
|------|-------------|------|---------|:--------:|:--------|
| name | `string` | `-` | yes | Resource group name | `-` |
| location | `string` | `East US` | no | The Azure Region where the Resource Group should exist, ex: East US | `-` |
| managed_by | `string` | `null` | no | The ID of the resource or application that manages this Resource Group | `-` |
| use_tags_default | `bool` | `true` | no | If true will be use the tags default to resources | `*`false <br> `*`true |
| tags | `map(any)` | `{}` | no | Tags to compartment | `-` |


## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.create_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Outputs

| Name | Description |
|------|-------------|
| `resource_group` | Resource group |
| `resource_group_id` | Resource group ID |
| `resource_group_name` | Resource group name |
