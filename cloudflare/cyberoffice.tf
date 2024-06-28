resource "cloudflare_record" "cyberoffice_host" {
  zone_id = var.cloudflare_zone_id
  name    = "cyberoffice"
  value   = "192.168.178.200"
  type    = "A"
  proxied = false
}
