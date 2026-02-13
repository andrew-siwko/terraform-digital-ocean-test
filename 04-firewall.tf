resource "digitalocean_firewall" "vm01_firewall" {
  name = "vm01_firewall"

  # Link this firewall to your Droplet
  droplet_ids = [digitalocean_droplet.vm01.id]

  # Inbound Rules: Allow SSH
  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"] # Change this to your IP for better security
  }

  # Outbound Rules: Allow everything so the Droplet can run 'dnf update'
  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  
  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}