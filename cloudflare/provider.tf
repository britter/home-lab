terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

variable "cloudflare_api_token" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
}

# Required for managing API tokens
data "cloudflare_api_token_permission_groups" "all" {}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
