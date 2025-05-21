module "zones" {
  source = "./zone"

  create = var.create
  zones  = var.zones
  tags   = var.tags
}

module "records" {
  source = "./records"

  create               = var.create
  zone_id              = var.zone_id
  zone_name            = var.zone_name
  private_zone         = var.private_zone
  records              = var.records
  records_jsonencoded  = var.records_jsonencoded
}
