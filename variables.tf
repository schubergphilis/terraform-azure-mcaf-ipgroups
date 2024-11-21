variable "resource_group" {
  description = "The Resource Group to create"
  type        = object({
    name     = string
    location = string
  })
}

variable "ipgroups" {
  description = "A map of IP Groups to create"
  type        = map(object({
    name  = string
    cidrs = list(string)
  })
  )
}