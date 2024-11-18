terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "chandu234-123"
    region         = "ap-south-1"
    key            = "terraform_state"
    dynamodb_table = "sample1"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
