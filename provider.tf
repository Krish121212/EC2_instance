terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
}

#   backend "s3" {
#     bucket = "devopskk-remote-state"
#     key    = "expense-vpc"
#     region = "us-east-1"
#     dynamodb_table = "devopskk-locking"
#   }

provider "aws" {
  region = "us-east-1"
}