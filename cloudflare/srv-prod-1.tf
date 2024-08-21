locals {
  srv_prod_1_ip = "192.168.178.211"
}

resource "cloudflare_record" "srv_prod_1_wildcard" {
  zone_id = var.cloudflare_zone_id
  name    = "*.srv-prod-1"
  value   = local.srv_prod_1_ip
  type    = "A"
  proxied = false
}
