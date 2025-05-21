variable "create" {
  description = "Whether to create Route53 resources (zones and records)"
  type        = bool
  default     = true
}

# ----------------------------
# Zone module inputs
# ----------------------------

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}

variable "tags" {
  description = "Tags applied to all Route53 zones. Takes precedence over tags defined inside zones map."
  type        = map(any)
  default     = {}
}

# ----------------------------
# Records module inputs
# ----------------------------

variable "zone_id" {
  description = "ID of the Route53 zone to create records in (optional if using zone_name)"
  type        = string
  default     = null
}

variable "zone_name" {
  description = "Name of the Route53 zone to create records in (optional if using zone_id)"
  type        = string
  default     = null
}

variable "private_zone" {
  description = "Whether the Route53 zone is private"
  type        = bool
  default     = false
}

variable "records" {
  description = "List of Route53 recordsets (as objects)"
  type        = any
  default     = []
}

variable "records_jsonencoded" {
  description = "Alternative input: JSON-encoded string of recordsets (used with Terragrunt)"
  type        = string
  default     = null
}
