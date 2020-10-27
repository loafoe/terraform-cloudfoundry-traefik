output "traefik_endpoint" {
  description = "The endpoint where Traefik is reachable on"
  value       = cloudfoundry_route.traefik.endpoint
}
