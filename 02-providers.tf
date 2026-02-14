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
  backend "s3" {
    endpoints = {
      s3 = "https://asiwko-terraform.nyc3.digitaloceanspaces.com"
    }
    
    bucket = "asiwko-terraform"
    key    = "terraform.tfstate" 
    region = "us-east-1"                  # Standard S3 requirement; value is ignored but must be valid AWS region slug

    # DigitalOcean doesn't support these AWS-specific features
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    skip_region_validation      = true
  }
}

provider "digitalocean" {
  token = var.DIGITAL_OCEAN_TOKEN
}

provider "linode" {
  token = var.LINODE_API_KEY
}


