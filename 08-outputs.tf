output "digital_ocean_instance_public_ip" {
  value = digitalocean_droplet.vm01.ipv4_address
}

output "newest_rocky_image" {
  value = data.digitalocean_images.rocky.images[0] 
}

output "lowest_price_size" {
  value = local.cheapest_size
}
