# main.tf | Main Configuration

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #      version = "2.70.0"
    }
  }

  backend "s3" {
    bucket = "ttt-state-bucket"
    key    = "mykey/terraform_state.tfstate"
    region = "ap-southeast-2"
  }
}

provider "aws" {
  region     = var.aws_region
#  access_key = var.aws_access_key
#  secret_key = var.aws_secret_key
}
