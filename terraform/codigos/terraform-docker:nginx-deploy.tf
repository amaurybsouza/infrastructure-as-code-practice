# Configure the Docker provider
provider "docker" {
  }
# Create a Apache Container
resource "docker_container" "nginx" {
    image = "nginx"
    name = "enginecks"
    ports {
        internal = "80"
        external = "80"
    }
}
# Create a image
resource "docker_image" "nginx" {
    name = "nginx:latest"
}

