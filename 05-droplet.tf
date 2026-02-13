resource "digitalocean_droplet" "vm01" {
 image = local.rocky_image.id
 name = "vm01"
 region = var.instance_region
 size = local.cheapest_size.slug
#  ssh_keys = [data.digitalocean_ssh_key.terraform.id]
}
output "droplet_ip" {
  value = digitalocean_droplet.vm01.ipv4_address
}   