variable "name" {
  type        = string
  description = "Resource name"
}

variable "max" {
  type        = number
  default     = 1
  description = "Maximum entries of Managed Prefix List"
}

variable "entries" {
  type        = list(any)
  default     = []
  description = "List of Managed Prefix List entries"
}