terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["/Users/boverbey/.aws/config"]
  shared_credentials_files = ["/Users/boverbey/.aws/credentials"]
}

# Create a VPC
resource "aws_vpc" "my-weather-notifier" {
  cidr_block = "10.0.0.0/16"
}
