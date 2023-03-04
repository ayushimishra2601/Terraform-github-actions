terraform {
  backend "s3" {
    bucket     = null
    region     = null
    key        = null
    access_key = null
    secret_key = null
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

locals {
  aws_region = "us-east-1"
}

##random provider
#provider "random" {}

provider "aws" {
  region = "us-east-1"
  #access_key = ${{ secrets.PROVIDER_AWS_ACCESS_KEY }}
  #secret_key = ${{ secrets.PROVIDER_AWS_SECRET_KEY }}
}
