variable "traefik_image" {
  type        = string
  description = "Traefik Docker image to use"
  default     = "traefik"
}
variable "cf_org" {
  type        = string
  description = "The CF Org to deploy under"
}
variable "cf_space" {
  type        = string
  description = "The CF Space to deploy in"
}
variable "cf_domain" {
  type        = string
  description = "The CF domain to use for Traefik"
}

variable "name_postfix" {
  type        = string
  description = "The postfix string to append to the hostname, prevents namespace clashes"
}

variable "environment" {
  type        = map
  description = "Environment variables for Traefik app"
  default     = {}
}

variable "network_policies" {
  description = "The container-to-container network policies to create with Traefik as the source app"
  type = list(object({
    destination_app = string
    protocol        = string
    port            = string
  }))
  default = []
}

variable "memory" {
  type        = number
  description = "The amount of RAM to allocate for Traefik (MB)"
  default     = 512
}

variable "disk" {
  type        = number
  description = "The amount of Disk space to allocate for Traefik (MB)"
  default     = 1024
}
