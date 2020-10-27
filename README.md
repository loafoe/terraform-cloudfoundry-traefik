<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="500px">

# terraform-cloudfoundry-traefik
Deploys a Traefik proxy to Cloud foundry

# Contact / Getting help
andy.lo-a-foe@philips.com

# License
License is MIT

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.4 |
| cloudfoundry | >= 0.12.6 |

## Providers

| Name | Version |
|------|---------|
| cloudfoundry | >= 0.12.6 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cf\_domain | The CF domain to use for Traefik | `string` | n/a | yes |
| cf\_org | The CF Org to deploy under | `string` | n/a | yes |
| cf\_space | The CF Space to deploy in | `string` | n/a | yes |
| disk | The amount of Disk space to allocate for Traefik (MB) | `number` | `1024` | no |
| environment | Environment variables for Traefik app | `map` | `{}` | no |
| memory | The amount of RAM to allocate for Traefik (MB) | `number` | `512` | no |
| name\_postfix | The postfix string to append to the hostname, prevents namespace clashes | `string` | n/a | yes |
| network\_policies | The container-to-container network policies to create with Traefik as the source app | <pre>list(object({<br>    destination_app = string<br>    protocol        = string<br>    port            = string<br>  }))</pre> | `[]` | no |
| traefik\_image | Traefik Docker image to use | `string` | `"traefik"` | no |

## Outputs

| Name | Description |
|------|-------------|
| traefik\_endpoint | The endpoint where Traefik is reachable on |

