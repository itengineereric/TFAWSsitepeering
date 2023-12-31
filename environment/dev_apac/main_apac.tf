terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}


# VPC
module "vpc" {
  source = "../../module/vpc" # will create all resouces under tf module folder
  env = var.env
  region = var.region

  # vpc.tf
  vpccidr = var.vpccidr

  # subnet.tf
  pubsubcidr = var.pubsubcidr
  privsubcidr = var.privsubcidr
  create_trustedsg = var.create_trustedsg 
  create_untrustedsg = var.create_untrustedsg
  create_natgw = var.create_natgw 
}
