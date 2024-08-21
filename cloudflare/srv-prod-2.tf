locals {
  srv_prod_2_ip = "192.168.178.212"
}

resource "cloudflare_record" "srv_prod_2_wildcard" {
  zone_id = var.cloudflare_zone_id
  name    = "*.srv-prod-2"
  value   = local.srv_prod_2_ip
  type    = "A"
  proxied = false
}
