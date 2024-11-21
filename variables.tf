variable "create_resource_group" {
  description = "A flag to create the Resource Group"
  type        = bool
  default     = true
}

variable "resource_group" {
  description = "The Resource Group to create"
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
