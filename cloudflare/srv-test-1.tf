locals {
  srv_test_1_ip = "192.168.178.221"
}

resource "cloudflare_record" "srv_test_1_wildcard" {
  zone_id = var.cloudflare_zone_id
  name    = "*.srv-test-1"
  value   = local.srv_test_1_ip
  type    = "A"
  proxied = false
}
