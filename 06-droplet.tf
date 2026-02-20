resource "digitalocean_ssh_key" "ansible_key" {
  name       = "ansible-key"
  public_key = file("/container_shared/ansible/ansible_rsa.pub")
}

resource "digitalocean_droplet" "vm01" {
 image = local.rocky_image.id
 name = "vm01"
 region = var.instance_region
 size = local.cheapest_size.slug
 ssh_keys = [digitalocean_ssh_key.ansible_key.id]
}
