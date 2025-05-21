variable "create_zone" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "create_records" {
  description = "Whether to create Route53 records"
  type        = bool
  default     = true
}

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}

variable "tags" {
  description = "Tags to apply to all Route53 zones"
  type        = map(any)
  default     = {}
}

variable "zone_id" {
  description = "Existing Route53 zone ID (optional override for records module)"
  type        = string
  default     = null
}

variable "zone_name" {
  description = "Existing Route53 zone name (optional override for records module)"
  type        = string
  default     = null
}

variable "private_zone" {
  description = "Whether the zone is private (used in data source for records module)"
  type        = bool
  default     = false
}

variable "records" {
  description = "List of DNS records to create"
  type        = any
  default     = []
}

variable "records_jsonencoded" {
  description = "List of DNS records as a JSON-encoded string (optional, for Terragrunt compatibility)"
  type        = string
  default     = null
}
