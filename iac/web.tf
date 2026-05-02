resource "docker_container" "web" {
  name  = "web-${terraform.workspace}"
  image = "lab/web"

  env = [
    "API_URL=http://api:3000"
  ]

  networks_advanced {
    name = docker_network.network.name
  }

  ports {
    internal = "80"
    external = var.web_port[terraform.workspace]
  }
    
}
