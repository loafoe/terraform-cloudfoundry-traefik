# terraform-cloudfoundry-traefik

Deploys a Traefik proxy to Cloud foundry

## example usage

```hcl
module "traefik" {
  source = "github.com/loafoe/terraform-cloudfoundry-traefik"

  cf_org       = "hsdp-demo-org"
  cf_space     = "test"
  cf_domain    = "us-east.philips-healthsuite.com"
  name_postfix = "test"

  environment = {
    "TRAEFIK_API" = "true"
    "TRAEFIK_API_INSECURE" = "true"
    "TRAEFIK_API_DASHBOARD" = "true"
    "TRAEFIK_API_DEBUG" = "true"
    "TRAEFIK_PILOT_TOKEN" = "xxx-xxxx-4xxx-xxxx-xxxxxxxxxx"
    "TRAEFIK_PROVIDERS_REST" = "true"
    "TRAEFIK_PROVIDERS_REST_INSECURE" = "true"
  }
}
```

Accessing the `traefik` entrypoint can then be done by SSH forward:

```
cf ssh -L8080:localhost:8080 traefik
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Contact / Getting help

andy.lo-a-foe@philips.com

## License

License is MIT
