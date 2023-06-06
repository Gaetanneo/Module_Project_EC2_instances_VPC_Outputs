# Code to carry provider block and specify the tool we are about to use (ignore line 2 through 9), which are just meant to download a recent version of Terraform at least 3.0
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "var.region"
}
