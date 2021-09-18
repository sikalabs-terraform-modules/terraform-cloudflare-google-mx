# Terraform Module: Cloudflare Google MX

## Example Usage

```tf
resource "cloudflare_zone" "example" {
    zone = "example.com"
}

module "google-mx" {
  source  = "sikalabs-terraform-modules/google-mx/cloudflare"
  version = "0.1.0-dev-2"
  
  zone_id = cloudflare_zone.example.id
}
```
