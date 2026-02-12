resource "digitalocean_droplet" "vm01" {
 image = "ubuntu-22-04-x64"
 name = "web-server"
 region = "nyc3"
 size = "s-1vcpu-1gb"
 ssh_keys = [data.digitalocean_ssh_key.terraform.id]

}