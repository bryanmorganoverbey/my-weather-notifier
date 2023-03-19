variable "AWS_CONFIG_PATH" {
  type = string
}

variable "AWS_CREDENTIALS_PATH" {
  type = string
}
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
  shared_config_files      = [var.AWS_CONFIG_PATH]
  shared_credentials_files = [var.AWS_CREDENTIALS_PATH]
}

# Create a VPC
resource "aws_vpc" "my-weather-notifier" {
  cidr_block = "10.0.0.0/16"
}
