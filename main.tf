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
      version = ">=4.30.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
#   access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
#   secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  region = "us-east-1"# define region as per your account
#   assume_role {
#   role_arn = "arn:aws:iam::289955253311:role/s3role"
#   }  
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "demo-github-actionnn-tf-medium"

#   object_lock_enabled = false

  tags = {
    Environment = "dev"
  }
}
