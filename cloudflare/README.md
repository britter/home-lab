# Cloudflare

Terraform configuration for modifying Cloudflare resources such as DNS records and API tokens.
Each server has a decidated file that creates a wildcard DNS record pointing at that server's local IP and an API token for that server to modify the DNS record.

Copy a token value into the system clipboard:

```
terraform output -raw name_of_value | wl-copy
```

