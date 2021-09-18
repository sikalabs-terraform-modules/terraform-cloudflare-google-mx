# Terraform

terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
}

# Variables

variable "zone_id" {
  type = string
  description = "Cloudflare zone ID"
}
variable "subdomain" {
  default = "@"
  type = string
  description = "Cloudflare zone ID"
}

# Main

resource "cloudflare_record" "mx0" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "aspmx.l.google.com"
  type     = "MX"
  priority = "1"
}

resource "cloudflare_record" "mx1" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt1.aspmx.l.google.com"
  type     = "MX"
  priority = "5"
}

resource "cloudflare_record" "mx2" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt2.aspmx.l.google.com"
  type     = "MX"
  priority = "5"
}
resource "cloudflare_record" "mx3" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt3.aspmx.l.google.com"
  type     = "MX"
  priority = "10"
}

resource "cloudflare_record" "mx4" {
  zone_id  = var.zone_id
  name     = var.subdomain
  value    = "alt4.aspmx.l.google.com"
  type     = "MX"
  priority = "10"
}
