# terraform-azure-mcaf-ipgroups
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_ip_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ip_group) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ipgroups"></a> [ipgroups](#input\_ipgroups) | A map of IP Groups to create | <pre>map(object({<br>    name  = string<br>    cidrs = list(string)<br>    })<br>  )</pre> | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The Resource Group to add the IP Groups to or create if create\_ipg\_resource\_group is true | <pre>object({<br>    name     = string<br>    location = string<br>  })</pre> | n/a | yes |
| <a name="input_create_ipg_resource_group"></a> [create\_ipg\_resource\_group](#input\_create\_ipg\_resource\_group) | A flag to create a Resource Group for the IP Groups | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->