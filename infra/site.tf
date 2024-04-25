resource "azurerm_resource_group" "rg_timburs" {
  name     = var.resource_group_name
  location = "East US 2"
}

resource "azurerm_dns_zone" "dns_timburs" {
  name                = "timburs.com"
  resource_group_name = var.resource_group_name
}

resource "azurerm_cdn_frontdoor_profile" "afd_timburs" {
  name                = "afd-website"
  resource_group_name = var.resource_group_name
  sku_name            = "Standard_AzureFrontDoor"
}

/*
resource "azurerm_cdn_frontdoor_custom_domain" "example" {
  name                     = "???"
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.afd_timburs.id
  dns_zone_id              = azurerm_dns_zone.dns_timburs.id
  host_name                = "timburs.com"

  tls {
    certificate_type    = "ManagedCertificate"
    minimum_tls_version = "TLS12"
  }
}
*/