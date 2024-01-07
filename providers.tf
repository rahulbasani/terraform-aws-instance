terraform {
  required_providers {
    aws = {
      version = "~> 5.2"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}