terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
  backend "s3" {
    bucket      = "danb-jan26-terraform"
    key         = "dev/dan/terraform.tfstate"
    encrypt     = "true"
    region      = "us-west-1"
    dynamodb_table = "danb-locking-table1"
  }
}

provider "aws" {
  region = "us-east-1"
}

