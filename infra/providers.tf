provider "aws" {
  region = "us-east-1"
}

locals {
  tags = {
    Project = "Bedrock"
  }
}
