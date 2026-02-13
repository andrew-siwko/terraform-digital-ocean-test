output "digital_ocean_instance_public_ip" {
  value = digitalocean_droplet.vm01.ipv4_address
}
