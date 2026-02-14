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

locals { rocky_image = data.digitalocean_images.rocky.images[0] }

data "digitalocean_sizes" "filtered" {
  sort {
    key       = "price_monthly"
    direction = "asc"
  }
}

locals { cheapest_size = data.digitalocean_sizes.filtered.sizes[0] }


