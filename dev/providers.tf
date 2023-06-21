terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  
  profile = "dariod9"
  region  = "us-west-2"
}
