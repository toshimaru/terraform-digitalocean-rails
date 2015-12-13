# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "{your_api_token}"
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image = "ubuntu-14-04-x64"
  name = "web-1"
  region = "sfo1"
  size = "512mb"
  ssh_keys = [{your_ssh_id}]
}
