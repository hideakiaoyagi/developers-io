terraform {
  required_version = "~> 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.12.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}