terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "bedrock-tfstate-alt-soe-025-1017"
    key            = "project-bedrock/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "bedrock-tfstate-lock"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
