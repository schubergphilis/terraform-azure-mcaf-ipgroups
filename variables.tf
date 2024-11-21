variable "create_ipg_resource_group" {
  description = "A flag to create a Resource Group for the IP Groups"
  type        = bool
  default     = true
}

variable "resource_group" {
  description = "The Resource Group to add the IP Groups to or create if create_ipg_resource_group is true"
  type = object({
    name     = string
    location = string
  })
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "ipgroups" {
  description = "A map of IP Groups to create"
  type = map(object({
    name  = string
    cidrs = list(string)
    })
  )
}
