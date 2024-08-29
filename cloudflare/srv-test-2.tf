locals {
  srv_test_2_ip = "192.168.178.222"
}

resource "cloudflare_record" "srv_test_2_wildcard" {
  zone_id = var.cloudflare_zone_id
  name    = "*.srv-test-2"
  value   = local.srv_test_2_ip
  type    = "A"
  proxied = false
}

data "cloudflare_api_token_permission_groups" "all" {}

resource "cloudflare_api_token" "srv_test_2_acme_token" {
  name = "srv-test-2 acme token"

  policy {
    permission_groups = [
      data.cloudflare_api_token_permission_groups.all.zone["DNS Write"],
    ]
    resources = {
      "com.cloudflare.api.account.zone.${var.cloudflare_zone_id}" = "*"
    }
  }
}

output "srv_test_2_acme_token_value" {
  value     = cloudflare_api_token.srv_test_2_acme_token.value
  sensitive = true
}
