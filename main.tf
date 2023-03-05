terraform {
    cloud {
        organization = "firsttest-poc" /// replace with your organization name
        workspaces {
          name = "stockx-workspace" /// replace with your workspace name
        }
      }
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.2"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
#   access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
#   secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  region = "us-east-1"# define region as per your account
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "demo-github-actionnn-tf-medium"

  object_lock_enabled = false

  tags = {
    Environment = "dev"
  }
}
