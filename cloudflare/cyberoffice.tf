locals {
  cyberoffice_ip = "192.168.178.200"
}

resource "cloudflare_record" "cyberoffice_host" {
  zone_id = var.cloudflare_zone_id
  name    = "cyberoffice"
  value   = local.cyberoffice_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "nextcloud" {
  zone_id = var.cloudflare_zone_id
  name    = "nextcloud"
  value   = local.cyberoffice_ip
  type    = "A"
  proxied = false
}
