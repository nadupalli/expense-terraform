terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket         = "lab-remotestate"
    key            = "expense"
    region         = "us-east-1"
    dynamodb_table = "lab-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}