terraform {
 required_providers {
   digitalocean = {
     source = "digitalocean/digitalocean"
     version = "~> 2.0"
   }
    # in order to update DNS on linode, we'll need the linode provider.
    linode = {
      source  = "linode/linode"
    }
 }
}

provider "digitalocean" {
 token = var.do_token
}
data "digitalocean_ssh_key" "terraform" {
 name = "your_ssh_key_name"
}


provider "linode" {
  token = var.LINODE_API_KEY
}
