resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = "lab/api"

  env = [
    "DB_HOST=api",
    "DB_PORT=5432"
  ]

  networks_advanced {
    name = docker_network.network.name
  }
  
  ports {
    internal = "3000"
    external = var.api_port[terraform.workspace]
  }
    
}
