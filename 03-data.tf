data "digitalocean_images" "rocky" {
  filter {
    key    = "distribution"
    values = ["Rocky Linux"]
  }
  filter {
    key    = "name"
    values = ["^9.*"]
    match_by = "re"  
    }
  sort {
    key       = "created"
    direction = "desc"
  }
}

output "newest_rocky_image" {
  value = data.digitalocean_images.rocky.images[0] 
}

data "digitalocean_sizes" "filtered" {
  filter {
    key    = "vcpus"
    values = [1]
  }
  filter {
    key    = "memory"
    values = [1024]
  }
  sort {
    key       = "price_monthly"
    direction = "asc"
  }
}

# Output the results so you can see the IDs
# output "image_id" {
#   value = data.digitalocean_image.rocky_linux.id
# }

output "lowest_price_sizes" {
  value = data.digitalocean_sizes.filtered.sizes
}