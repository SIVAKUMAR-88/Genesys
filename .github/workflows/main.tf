terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = "~> 1.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id     = var.client_id
  oauthclient_secret = var.client_secret
}

resource "genesyscloud_routing_queue" "sample" {
  name = "SK-Test-Queue"
}
