terraform {
    cloud {
        organization = "firsttest-poc" /// replace with your organization name
        workspaces {
          name = "test-workspace" /// replace with your workspace name
        }
      }
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"# define region as per your account
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "demo-github-action-tf-medium"

  object_lock_enabled = false

  tags = {
    Environment = "dev"
  }
}
