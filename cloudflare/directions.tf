locals {
  directions_ip = "192.168.178.105"
}

resource "cloudflare_record" "directions_host" {
  zone_id = var.cloudflare_zone_id
  name    = "directions"
  value   = local.watchtower_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "adguard" {
  zone_id = var.cloudflare_zone_id
  name    = "adguard"
  value   = local.directions_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "homepage" {
  zone_id = var.cloudflare_zone_id
  name    = "home"
  value   = local.directions_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "fritz_box" {
  zone_id = var.cloudflare_zone_id
  name    = "fritz-box"
  value   = local.directions_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "proxmox" {
  zone_id = var.cloudflare_zone_id
  name    = "proxmox"
  value   = local.directions_ip
  type    = "A"
  proxied = false
}

