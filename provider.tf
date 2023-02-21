terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = "AKIA2UWAKQ47WJW4Q5M7"
  secret_key = "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"
}

