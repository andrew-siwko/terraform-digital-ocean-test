terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    # in order to update DNS on linode, we'll need the linode provider.
    linode = {
      source = "linode/linode"
    }
  }
  # this is temporary until we configure a remote back end.
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "digitalocean" {
  token = var.DIGITAL_OCEAN_TOKEN
}

provider "linode" {
  token = var.LINODE_API_KEY
}
