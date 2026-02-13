

# 1. Locate the Rocky Linux 9 Image
data "digitalocean_image" "rocky_linux" {
  slug = "rocky-linux-9-x64"
}

# 2. Locate a specific Region (e.g., New York 3)
data "digitalocean_region" "ny" {
  slug = "nyc3"
}

# 3. Locate a Droplet Size (e.g., 2GB RAM for your migration test)
data "digitalocean_sizes" "standard" {
  filter {
    key    = "vcpus"
    values = [1]
  }
  filter {
    key    = "memory"
    values = [2048] # 2GB
  }
  sort {
    key       = "price_monthly"
    direction = "asc"
  }
}

# Output the results so you can see the IDs
output "image_id" {
  value = data.digitalocean_image.rocky_linux.id
}

output "selected_size" {
  value = data.digitalocean_sizes.standard.sizes[0].slug
}