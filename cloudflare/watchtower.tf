locals {
  watchtower_ip = "192.168.178.210"
}

resource "cloudflare_record" "watchtower_host" {
  zone_id = var.cloudflare_zone_id
  name    = "watchtower"
  value   = local.watchtower_ip
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "grafana" {
  zone_id = var.cloudflare_zone_id
  name    = "grafana"
  value   = local.watchtower_ip
  type    = "A"
  proxied = false
}
