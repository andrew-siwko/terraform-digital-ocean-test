variable "LINODE_API_KEY" {
  description = "The key to the Linode API"
  type        = string
  sensitive   = true
}

variable "DIGITAL_OCEAN_TOKEN" {
  description = "The key to the DigitalOcean API"
  type        = string
  sensitive   = true
}

variable "instance_region" {
  description = "The region to create the instance"
  type        = string
  default     = "nyc3"
}

variable "domain_name" {
  description = "The domain to create instance records in."
  type    = string
  default = "siwko.org"
}

variable "domain_soa_email" {
  description = "The domain manager e-mail address."
  type    = string
  default = "asiwko@siwko.org"
}
