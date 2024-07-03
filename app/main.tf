terraform {
  backend "s3" {
    bucket     = "terraform-backend-louise"
    key        = "dev-louise-bucket"
    region     = "us-east-1"
    access_key = "Key"
    secret_key = "Secret"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 0.12"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "Key"
  secret_key = "Secret"
}
